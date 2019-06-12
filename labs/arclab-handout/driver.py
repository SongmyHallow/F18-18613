#!/bin/env python2.7
#
# driver.py - The driver tests the correctness of the students
# arclab handin
# 18-600 version, with parta=>parta, partc=>partb and a new partc using gem5.
#
from __future__ import division
import subprocess;
import re;
import os;
import sys;
import optparse;
from run_gem5 import *
from o3_configs import config as o3_config

o3_config["simple"] = (4, 8)
def test_gem5(cpu_model_path, binary, flags, out_dir, feature, params, config=None, rungem5=False):
    p = subprocess.Popen(" ".join(["./" + binary, flags]),
            shell=True, stdout=subprocess.PIPE)
    stdout_data = p.communicate()[0]
    stdout_data = re.split('\n', stdout_data)
    params_dict = {}
    metric = None
    for line in stdout_data:
        if re.match("Verified!", line):
            if rungem5:
                if config is None:
                    config = binary
                if o3_config[config] is None:
                    print "Using default config"
                    o3_config[config] = (4, 8)
                run_gem5("./"+binary, out_dir, flags, o3_config[config][0],
                         o3_config[config][1], cpu_model_path)
                stats = open(os.path.join(out_dir, 'stats.txt'), 'r')
                for line in stats:
                    if re.match(feature, line):
                        metric = float(line.split()[1])
                        break
                config = open(os.path.join(out_dir, 'config.ini'), 'r')
                for line in config:
                    if not params:
                        break
                    for p in params:
                        if re.match(p, line):
                            params_dict[p] = float(line.split('=')[1])
                            params.remove(p)
                return True, metric, params_dict
            else:
                return True, None, None
    return False, None, None

def parta():
    saved_dir = os.getcwd()
    # Check the correctness of part A
    print "Testing part A"
    try:
        os.chdir("test/parta")
        p = subprocess.Popen(
            "./grade-archlaba.pl -f ../../sim/misc -s ../../sim -e",
            shell=True, stdout=subprocess.PIPE)
        stdout_data = p.communicate()[0]
        os.chdir(saved_dir)
    except:
        print "An exception occurred when testing Part A. Skipping this part."
        stdout_data = ""
    # Emit the output from part A autograder
    results_parta = 0
    stdout_data = re.split('\n', stdout_data)
    for line in stdout_data:
        if re.match("PARTA_SCORE", line):
            results_parta = int(re.findall(r'(\d+)', line)[0])
        else:
            print "%s" % (line)
    return (results_parta, [])

def partb():
    saved_dir = os.getcwd()
    # Check the correctness of part B
    print "Testing part B"
    try:
        os.chdir("test/partb")
        p = subprocess.Popen(
            "./grade-archlabb.pl -f ../../sim/pipe -s ../../sim -e",
            shell=True, stdout=subprocess.PIPE)
        stdout_data = p.communicate()[0]
        os.chdir(saved_dir)
    except:
        print "An exception occurred when testing Part B. Skipping this part."
        stdout_data = ""

    # Emit the output from part B autograder
    results_partb = 0
    stdout_data = re.split('\n', stdout_data)
    for line in stdout_data:
        if re.match("PARTB_SCORE", line):
            results_partb = int(re.findall(r'(\d+)', line)[0])
        else:
            print "%s" % (line)
    return (results_partb, [])

def partc1():
    gem5_out = ''
    print "Part C.1: Testing simple benchmark"
    simple_correct, simple_cycles, simple_params = test_gem5(
            'o3_roi.py', 'simple', '', 'out/o3_simple',
            'switch_cpus.numCycles', [], rungem5=True)
    if simple_correct:
        gem5_out += "Simple benchmark Cycles = {}".format(simple_cycles)
    else:
        gem5_out += "Simple benchmark not correct"
        gem5_out += "\n"
    print gem5_out

    return (max(min((simple_cycles-620) * -0.1 + 10 , 10), 0), [simple_cycles]) #fixme, need autograding

def partc2():
    gem5_out = ''
    print "Part C: Testing Naive Matrix Multiplication"
    mm_naive_correct, mm_naive_cpi, mm_naive_params = test_gem5('o3_roi.py',
            'mm', '-nu',
            'out/o3_mm_naive',
            'switch_cpus.cpi',
            ['numROBEntries', 'numIQEntries'],
            rungem5=True)

    print(mm_naive_correct, mm_naive_cpi, mm_naive_params)

    print "Part C: Testing DAXPY"
    daxpy_correct, daxpy_cpi, daxpy_params = test_gem5('o3_roi.py',
            'daxpy', '-u',
            'out/o3_daxpy',
            'switch_cpus.cpi',
            ['numROBEntries', 'numIQEntries'],
            rungem5=True)

    print "Part C: Testing Tree"
    tree_correct, tree_cpi, tree_params = test_gem5('o3_roi.py',
            'tree', '',
            'out/o3_tree',
            'switch_cpus.cpi',
            ['numROBEntries', 'numIQEntries'],
            rungem5=True)

    print "Part C: Testing ModExp"
    modexp_correct, modexp_cpi, modexp_params = test_gem5('o3_roi.py',
            'modexp', '',
            'out/o3_modexp',
            'switch_cpus.cpi',
            ['numROBEntries', 'numIQEntries'],
            rungem5=True)

    if mm_naive_correct:
        gem5_out += "Naive MM CPI = {0}\n".format(mm_naive_cpi)
        cost = 0
        for k,v in mm_naive_params.iteritems():
            gem5_out += "{0} = {1}\n".format(k,v)
            cost += v
        gem5_out += "Total Cost (C) = %d\n" % (cost)
        gem5_out += "CPI x C^{1/3} = %.4f\n" % (mm_naive_cpi * cost**(1/3))
    else:
        gem5_out += "Naive MM not verified.\n"

    gem5_out += "\n"

    if daxpy_correct:
        gem5_out += "DAXPY CPI = {0}\n".format(daxpy_cpi)
        cost = 0
        for k,v in daxpy_params.iteritems():
            gem5_out += "{0} = {1}\n".format(k,v)
            cost += v
        gem5_out += "Total Cost (C) = %d\n" % (cost)
        gem5_out += "CPI x C^{1/3} = %.4f\n" % (daxpy_cpi * cost**(1/3))
    else:
        gem5_out += "DAXPY not verified.\n"

    gem5_out += "\n"

    if tree_correct:
        gem5_out += "Tree CPI = {0}\n".format(tree_cpi)
        cost = 0
        for k,v in tree_params.iteritems():
            gem5_out += "{0} = {1}\n".format(k,v)
            cost += v
        gem5_out += "Total Cost (C) = %d\n" % (cost)
        gem5_out += "CPI x C^{1/3} = %.4f\n" % (tree_cpi * cost**(1/3))
    else:
        gem5_out += "Tree not verified.\n"

    gem5_out += "\n"

    if modexp_correct:
        gem5_out += "ModExp CPI = {0}\n".format(modexp_cpi)
        cost = 0
        for k,v in modexp_params.iteritems():
            gem5_out += "{0} = {1}\n".format(k,v)
            cost += v
        gem5_out += "Total Cost (C) = %d\n" % (cost)
        gem5_out += "CPI x C^{1/3} = %.4f\n" % (modexp_cpi * cost**(1/3))
    else:
        gem5_out += "ModExp not verified.\n"

    print gem5_out
    return (None, [])


def partc3():
    gem5_out = ''
    print "Part C: Testing Naive Matrix Multiplication with Star config"
    mm_naive_correct, mm_naive_cpi, mm_naive_params = test_gem5('o3_roi.py',
            'mm', '-nu',
            'out/o3_mm_naive',
            'switch_cpus.cpi',
            ['numROBEntries', 'numIQEntries'],
            config="star", rungem5=True)

    print(mm_naive_correct, mm_naive_cpi, mm_naive_params)

    print "Part C: Testing DAXPY with Star config"
    daxpy_correct, daxpy_cpi, daxpy_params = test_gem5('o3_roi.py',
            'daxpy', '-u',
            'out/o3_daxpy',
            'switch_cpus.cpi',
            ['numROBEntries', 'numIQEntries'],
            config="star", rungem5=True)

    print "Part C: Testing Tree with Star config"
    tree_correct, tree_cpi, tree_params = test_gem5('o3_roi.py',
            'tree', '',
            'out/o3_tree',
            'switch_cpus.cpi',
            ['numROBEntries', 'numIQEntries'],
            config="star", rungem5=True)

    print "Part C: Testing ModExp with Star config"
    modexp_correct, modexp_cpi, modexp_params = test_gem5('o3_roi.py',
            'modexp', '',
            'out/o3_modexp',
            'switch_cpus.cpi',
            ['numROBEntries', 'numIQEntries'],
            config="star", rungem5=True)

    if mm_naive_correct:
        gem5_out += "Naive MM CPI = {0}\n".format(mm_naive_cpi)
        cost = 0
        for k,v in mm_naive_params.iteritems():
            gem5_out += "{0} = {1}\n".format(k,v)
            cost += v
        gem5_out += "Total Cost (C) = %d\n" % (cost)
        gem5_out += "CPI x C^{1/3} = %.4f\n" % (mm_naive_cpi * cost**(1/3))
    else:
        gem5_out += "Naive MM not verified.\n"

    gem5_out += "\n"

    if daxpy_correct:
        gem5_out += "DAXPY CPI = {0}\n".format(daxpy_cpi)
        cost = 0
        for k,v in daxpy_params.iteritems():
            gem5_out += "{0} = {1}\n".format(k,v)
            cost += v
        gem5_out += "Total Cost (C) = %d\n" % (cost)
        gem5_out += "CPI x C^{1/3} = %.4f\n" % (daxpy_cpi * cost**(1/3))
    else:
        gem5_out += "DAXPY not verified.\n"

    gem5_out += "\n"

    if tree_correct:
        gem5_out += "Tree CPI = {0}\n".format(tree_cpi)
        cost = 0
        for k,v in tree_params.iteritems():
            gem5_out += "{0} = {1}\n".format(k,v)
            cost += v
        gem5_out += "Total Cost (C) = %d\n" % (cost)
        gem5_out += "CPI x C^{1/3} = %.4f\n" % (tree_cpi * cost**(1/3))
    else:
        gem5_out += "Tree not verified.\n"

    gem5_out += "\n"

    if modexp_correct:
        gem5_out += "ModExp CPI = {0}\n".format(modexp_cpi)
        cost = 0
        for k,v in modexp_params.iteritems():
            gem5_out += "{0} = {1}\n".format(k,v)
            cost += v
        gem5_out += "Total Cost (C) = %d\n" % (cost)
        gem5_out += "CPI x C^{1/3} = %.4f\n" % (modexp_cpi * cost**(1/3))
    else:
        gem5_out += "ModExp not verified.\n"

    print gem5_out
    return (None, [])

#
# main - Main function
#
def main():

    # Configure maxscores
    maxscore= {};
    maxscore['a'] = 30
    maxscore['b'] = 45
    maxscore['c1'] = 10

    valid_parts = {"a", "b", "c1", "c2", "c3"}


    # Parse the command line arguments
    p = optparse.OptionParser()
    p.add_option("-A", action="store_true", dest="autograde",
                 help="emit autoresult string for Autolab");
    p.add_option("-a", action="append_const", dest="parts", const="a",
                 help="Run part A")
    p.add_option("-b", action="append_const", dest="parts", const="b",
                 help="Run part B")

    p.add_option("-c", action="append", dest="parts", type="choice",
                 choices=["1", "2", "3"], help="Run specified question of part c "
                 "You may specify this option several time") #option argument (1,2,3)
    p.add_option("-C", action="append_const", dest="parts", const="c",
                 help="Equivalent to -c1 -c2 -c3")

    # logic :
    # if autograde alone then run a,b,c.1
    # complain if other option specified
    # if a, specified run a, if b specified run b, if c1,c2,c3 specified etc
    # if nothing, run a, b, c1
    # as a bonus -C runs c.1,2 and 3

    parts = set()
    opts, args = p.parse_args()
    autograde = False
    if opts.autograde:
        autograde = True
        if not opts.parts is None:
            print "You cannot specify part when autograding"
            sys.exit(1)
        parts = {"a", "b"}
    elif opts.parts is None:
        parts = {"a", "b", "c1"}
    else:
        for p in opts.parts:
            if p == "a" or p == "b":
                parts.add(p)
            elif p == "c":
                parts.update({"c1", "c2", "c3"})
            elif p in {"1", "2", "3"}:
                parts.add("c"+p)
            else:
                print "Unknown part {}".format(p)
                sys.exit(1)
    print "Parts : {}".format(parts)
    results = {}

    if "a" in parts:
        results["a"] = parta()

    if "b" in parts:
        results["b"] = partb()

    if "c1" in parts:
        results["c1"] = partc1()
    if "c2" in parts:
        results["c2"] = partc2()
    if "c3" in parts:
        results["c3"] = partc3()


    saved_dir = os.getcwd()



    # Summarize the results
    total_score = 0
    print "\nArclab Summary:"
    print "%-22s%8s%12s" % ("", "Points", "Max Points")
    for part in sorted(parts):
        if part in maxscore:
            total_score += results[part][0]
            print "%-22s%8d%12d" % ("Part {}".format(part.upper()), results[part][0], maxscore[part])
        else:
            print "%-22s%8s%12s" % ("Part {}".format(part.upper()), "N/A", "Not-Graded")

    print "%-22s%8d" % ("Total Autograded Points", total_score)

    # Emit autoresult string for Autolab if called with -A option
    if autograde:
        autoresult="{\"scores\": {\"Part A\": %.1f, \"Part B\": %.1f}, \"scoreboard\": [%d, %d, %d]}" \
        % (results["a"][0], results["b"][0], total_score, results["a"][0], results["b"][0])
        print "%s" % autoresult


if __name__ == "__main__":
  main()

