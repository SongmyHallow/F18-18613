#ifndef ARCHLAB_H
#define ARCHLAB_H

#include <gem5/m5ops.h>

#define GEM5OP(condition, op) \
    if (condition) { \
        op; \
    }

#define ROI_START(gem5) GEM5OP(gem5, m5_switch_cpu())
#define ROI_END(gem5) GEM5OP(gem5, m5_exit(0))



#endif //ARCHLAB_H
