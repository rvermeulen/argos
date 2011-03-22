/* Common softmmu definitions and inline routines.  */

/* XXX: find something cleaner.
 * Furthermore, this is false for 64 bits targets
 */
#define ldul_user       ldl_user
#define ldul_kernel     ldl_kernel
#define ldul_hypv       ldl_hypv
#define ldul_executive  ldl_executive
#define ldul_supervisor ldl_supervisor

#define ACCESS_TYPE 0
#define MEMSUFFIX MMU_MODE0_SUFFIX
#define DATA_SIZE 1
#include "softmmu_header.h"

#define DATA_SIZE 2
#include "softmmu_header.h"

#define DATA_SIZE 4
#include "softmmu_header.h"

#define DATA_SIZE 8
#include "softmmu_header.h"
#undef ACCESS_TYPE
#undef MEMSUFFIX

#define ACCESS_TYPE 1
#define MEMSUFFIX MMU_MODE1_SUFFIX
#define DATA_SIZE 1
#include "softmmu_header.h"

#define DATA_SIZE 2
#include "softmmu_header.h"

#define DATA_SIZE 4
#include "softmmu_header.h"

#define DATA_SIZE 8
#include "softmmu_header.h"
#undef ACCESS_TYPE
#undef MEMSUFFIX

#if (NB_MMU_MODES >= 3)

#define ACCESS_TYPE 2
#define MEMSUFFIX MMU_MODE2_SUFFIX
#define DATA_SIZE 1
#include "softmmu_header.h"

#define DATA_SIZE 2
#include "softmmu_header.h"

#define DATA_SIZE 4
#include "softmmu_header.h"

#define DATA_SIZE 8
#include "softmmu_header.h"
#undef ACCESS_TYPE
#undef MEMSUFFIX

#if (NB_MMU_MODES >= 4)

#define ACCESS_TYPE 3
#define MEMSUFFIX MMU_MODE3_SUFFIX
#define DATA_SIZE 1
#include "softmmu_header.h"

#define DATA_SIZE 2
#include "softmmu_header.h"

#define DATA_SIZE 4
#include "softmmu_header.h"

#define DATA_SIZE 8
#include "softmmu_header.h"
#undef ACCESS_TYPE
#undef MEMSUFFIX

#if (NB_MMU_MODES > 4)
#error "NB_MMU_MODES > 4 is not supported for now"
#endif /* (NB_MMU_MODES > 4) */
#endif /* (NB_MMU_MODES == 4) */
#endif /* (NB_MMU_MODES >= 3) */

/* these access are slower, they must be as rare as possible */
#define ACCESS_TYPE (NB_MMU_MODES)
#define MEMSUFFIX _data
#define DATA_SIZE 1
#include "softmmu_header.h"

#define DATA_SIZE 2
#include "softmmu_header.h"

#define DATA_SIZE 4
#include "softmmu_header.h"

#define DATA_SIZE 8
#include "softmmu_header.h"
#undef ACCESS_TYPE
#undef MEMSUFFIX

#define ldub(p) ldub_data(p)
#define ldsb(p) ldsb_data(p)
#define lduw(p) lduw_data(p)
#define ldsw(p) ldsw_data(p)
#define ldl(p) ldl_data(p)
#define ldq(p) ldq_data(p)

#define stb(p, v) stb_data(p, v)
#define stw(p, v) stw_data(p, v)
#define stl(p, v) stl_data(p, v)
#define stq(p, v) stq_data(p, v)

/* Argos definitions */
#define argos_ldub(p, t) argos_ldub_data(p, t)
#define argos_ldsb(p, t) argos_ldsb_data(p, t)
#define argos_lduw(p, t) argos_lduw_data(p, t)
#define argos_ldsw(p, t) argos_ldsw_data(p, t)
#define argos_ldl(p, t)  argos_ldl_data(p, t)
#define argos_ldq(p, t)  argos_ldq_data(p, t)

#define argos_stb(p, v, t) argos_stb_data(p, v, t)
#define argos_stw(p, v, t) argos_stw_data(p, v, t)
#define argos_stl(p, v, t) argos_stl_data(p, v, t)
#define argos_stq(p, v, t) argos_stq_data(p, v, t)
