#ifndef _ARGOS_TRACKSC_LOG_H
#define _ARGOS_TRACKSC_LOG_H

#define ARGOS_TRACKSC_LOG_SIGNATURE 0x4353

#define ARGOS_TRACKSC_LOG_MAJOR_VERSION 0x1
#define ARGOS_TRACKSC_LOG_MINOR_VERSION 0x0
#define ARGOS_TRACKSC_LOG_VERSION (( (ARGOS_TRACKSC_LOG_MAJOR_VERSION) << 8 )\
        | (ARGOS_TRACKSC_LOG_MINOR_VERSION))

#define ARGOS_TRACKSC_LOG_ARCH_FLAG_MASK 0x80000000
#define ARGOS_TRACKSC_LOG_SET_ARCH_FLAG(F, X) (F) = (((F) & \
        ~(ARGOS_TRACKSC_LOG_ARCH_FLAG_MASK)) | ((X) << 31))
#define ARGOS_TRACKSC_LOG_ARCH_FLAG_X86 0
#define ARGOS_TRACKSC_LOG_ARCH_FLAG_X64 1

#define ARGOS_TRACKSC_LOG_NET_TRACKER_FLAG_MASK 0x40000000
#define ARGOS_TRACKSC_LOG_SET_NET_TRACKER_FLAG(F, X) (F) = (((F) & \
        ~(ARGOS_TRACKSC_LOG_NET_TRACKER_FLAG_MASK)) | ((X) << 30))
#define ARGOS_TRACKSC_LOG_NET_TRACKER_FLAG_DISABLED 0
#define ARGOS_TRACKSC_LOG_NET_TRACKER_FLAG_ENABLED 1


typedef enum {MEMORY_NONE, MEMORY_READ, MEMORY_WRITE} memory_access_type;

typedef struct
{
    memory_access_type access_type;
    target_ulong vaddr;
    target_ulong paddr;
    target_ulong value;
    target_ulong size;
#ifdef ARGOS_NET_TRACKER
    argos_netidx_t netidx[sizeof(target_ulong)];
#endif
} __attribute__((packed)) argos_tracksc_log_memory_entry;

typedef struct
{
    target_ulong regs[CPU_NB_REGS];
    target_ulong eip;
    target_ulong eflags;
} __attribute__((packed)) argos_tracksc_log_cpu_state;

typedef struct
{
    char bytes[15];
    uint8_t size;
#ifdef ARGOS_NET_TRACKER
    argos_netidx_t netidx[15];
    uint8_t stage;
#endif
    // If an instruction is a call or jmp to a function of which we
    // know the name, we want to store that as well.
    char operand1_symbol[64];
} __attribute__((packed)) argos_tracksc_log_instruction_entry;


typedef struct
{
    argos_tracksc_log_cpu_state cpu_state;
    argos_tracksc_log_instruction_entry instruction;
    argos_tracksc_log_memory_entry memory_read;
    argos_tracksc_log_memory_entry memory_written;

} __attribute__((packed)) argos_tracksc_log_entry;

typedef struct
{
    uint16_t signature;
    uint16_t version;
    uint32_t flags;
} __attribute__((packed)) argos_tracksc_log_hdr;

typedef struct
{
    FILE * log_file;
    argos_tracksc_log_entry buffered_entries[10];
    // Current points to an entry in the buffered_entries.
    argos_tracksc_log_entry * current_entry;
    CPUX86State * state;
} argos_tracksc_log;

argos_tracksc_log * argos_tracksc_create_log(const char * path, CPUX86State * env);
void argos_tracksc_close_log(argos_tracksc_log * log);
void argos_tracksc_flush_log(argos_tracksc_log * log);
void argos_tracksc_log_before_execution(argos_tracksc_log * log);
void argos_tracksc_log_after_execution(argos_tracksc_log * log);

#endif
