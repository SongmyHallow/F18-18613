# configuration for the various benchmarks
# The order is Number of InstructionQueue, number of ROB.
# if a config is None the simulation will not be run
# replace None with (IQ, ROB) eg (4, 8)
config = {
"daxpy" : None, # (IQ, ROB)
"mm" : None,
"tree" : None,
"modexp" : None,
"star" : None,
}

