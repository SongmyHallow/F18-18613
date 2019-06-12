#!/bin/env python
from __future__ import print_function
import os
import subprocess
import sys

if os.path.isdir("/afs/cs.cmu.edu/academic/class/18600-f18/gem5"):
    gem5root = "/afs/cs.cmu.edu/academic/class/18600-f18/gem5"
elif os.path.isdir("/afs/cs.cmu.edu/academic/class/18600-s18/gem5"):
    gem5root = "/afs/cs.cmu.edu/academic/class/18600-s18/gem5"
elif os.path.isdir('/usr/local/depot/gem5'):
    gem5root = '/usr/local/depot/gem5'
else:
    print("gem5 not found")
    sys.exit(2)

gem5_cmd = (gem5root +
            "/build/X86/gem5.opt "
            "--debug-flags=O3PipeView --debug-file=trace.out.gz --debug-start=0 "
            "{cpu} "
            "--cmd={bin} "
            "--l1d_size=64kB "
            "--l1i_size=16kB "
            "--IQ {IQ} --ROB {ROB} "
            "--directory={out} "
            "--options={flags}\\ -g" # the extra g flag is reserved for gem5 roi support
           )

#print(gem5_cmd)

def run_gem5(cmd, outdir, options, IQ, ROB, cpu_model_path="o3_roi.py"):
    try:
        os.environ["LD_LIBRARY_PATH"] = "{}:{}".format(
            "/afs/club.cc.cmu.edu/contrib/lib",
            os.environ["LD_LIBRARY_PATH"])
    except KeyError:
        os.environ["LD_LIBRARY_PATH"] = "/afs/club.cc.cmu.edu/contrib/lib"
    p = subprocess.Popen(gem5_cmd.format(cpu=cpu_model_path,
                                         bin=cmd,
                                         flags=options,
                                         out=outdir,
                                         IQ=IQ,
                                         ROB=ROB),
                         shell=True, stdout=subprocess.PIPE)
    stdout_naive_gem5 = p.communicate()[0]
    return stdout_naive_gem5

def main():
    """
When run as a script, read ROB, IQ, cmd and outdir from command line.
"""
    from optparse import OptionParser
    p = OptionParser();
    p.add_option("--cmd", type="str", default=None)
    p.add_option("--directory", type="str", default="out")
    p.add_option("--ROB", type=int, default=8)
    p.add_option("--IQ", type=int, default=4)
    p.add_option("--options", type=str, default=None)

    opts, args = p.parse_args()
    if opts.cmd is None:
        print("Missing command name")
        sys.exit(1)
    run_gem5(opts.cmd, opts.directory, opts.options, opts.IQ, opts.ROB)

if __name__ == "__main__":
    main()


