#ifndef _WINITERNL_H
#define _WINITERNL_H

#include <stdint.h>

// We define a target pointer types since the guest width may differ
// with the host width (e.g. 32 bit guest on 64 bit host).
typedef target_ulong target_ptr_t;

//typedef uint8_t BYTE;
typedef int16_t SHORT;
typedef uint16_t USHORT;
//typedef uint16_t WORD;
typedef int32_t LONG;
typedef uint32_t ULONG;
typedef int64_t LONGLONG;
typedef uint64_t ULONGLONG;
//typedef uint32_t DWORD;
typedef int8_t CHAR;
//typedef CHAR* PCHAR;
typedef target_ptr_t PCHAR;
typedef wchar_t WCHAR;
//typedef WCHAR* PWSTR;
typedef target_ptr_t PWSTR;
typedef BYTE BOOLEAN;
typedef void VOID;
//typedef VOID* PVOID;
typedef target_ptr_t PVOID;
//typedef PVOID* PPVOID;
typedef target_ptr_t PPVOID;
typedef PVOID HANDLE;
typedef LONG NTSTATUS;
//typedef void* PPS_POST_PROCESS_INIT_ROUTINE;
typedef target_ptr_t PPS_POST_PROCESS_INIT_ROUTINE;
//typedef void (*PPEBLOCKROUTINE)(PVOID PebLock); 
typedef target_ptr_t PPEBLOCKROUTINE;

union _LARGE_INTEGER {
    struct {
        DWORD LowPart;
        LONG HighPart;
    } __attribute__((packed));

    struct {
        DWORD LowPart;
        LONG HighPart;
    } u __attribute__((packed));
    LONGLONG QuadPart;
} __attribute__((packed));
typedef union _LARGE_INTEGER LARGE_INTEGER;
typedef target_ptr_t PLARGE_INTEGER;

typedef target_ptr_t PLIST_ENTRY;
struct _LIST_ENTRY {
    PLIST_ENTRY Flink;
    PLIST_ENTRY Blink;
} __attribute__((packed));
typedef struct _LIST_ENTRY LIST_ENTRY;

struct _STRING {
    USHORT  Length;
    USHORT  MaximumLength;
    PCHAR  Buffer;
} __attribute__((packed));
typedef struct _STRING ANSI_STRING;
typedef target_ptr_t PANSI_STRING;

struct _LSA_UNICODE_STRING {
    USHORT Length;
    USHORT MaximumLength;
    PWSTR  Buffer;
} __attribute__((packed));
typedef struct _LSA_UNICODE_STRING LSA_UNICODE_STRING;
typedef struct _LSA_UNICODE_STRING UNICODE_STRING;
typedef target_ptr_t PLSA_UNICODE_STRING;
typedef target_ptr_t PUNICODE_STRING;

struct _PEB_LDR_DATA {
    ULONG Length;
    BOOLEAN Initialized;
    PVOID SsHandle;
    LIST_ENTRY InLoadOrderModuleList;
    LIST_ENTRY InMemoryOrderModuleList;
    LIST_ENTRY InInitializationOrderModuleList;
} __attribute__((packed));
typedef struct _PEB_LDR_DATA PEB_LDR_DATA;
typedef target_ptr_t PPEB_LDR_DATA;

struct _LDR_DATA_TABLE_ENTRY {
    LIST_ENTRY InLoadOrderModuleList;
    LIST_ENTRY InMemoryOrderModuleList;
    LIST_ENTRY InInitializationOrderModuleList;
    PVOID BaseAddress;
    PVOID EntryPoint;
    ULONG SizeOfImage;
    UNICODE_STRING FullDllName;
    UNICODE_STRING BaseDllName;
    ULONG Flags;
    SHORT LoadCount;
    SHORT TlsIndex;
    LIST_ENTRY HashTableEntry;
    ULONG TimeDateStamp;
} __attribute__((packed));
typedef struct _LDR_DATA_TABLE_ENTRY LDR_DATA_TABLE_ENTRY;
typedef target_ptr_t PLDR_DATA_TABLE_ENTRY;

struct _RTL_DRIVE_LETTER_CURDIR {
    USHORT Flags;
    USHORT Length;
    ULONG TimeStamp;
    UNICODE_STRING DosPath;
} __attribute__((packed));
typedef struct _RTL_DRIVE_LETTER_CURDIR RTL_DRIVE_LETTER_CURDIR;
typedef target_ptr_t PRTL_DRIVE_LETTER_CURDIR;

struct _RTL_USER_PROCESS_PARAMETERS {
    ULONG MaximumLength;
    ULONG Length;
    ULONG Flags;
    ULONG DebugFlags;
    PVOID ConsoleHandle;
    ULONG ConsoleFlags;
    HANDLE StdInputHandle;
    HANDLE StdOutputHandle;
    HANDLE StdErrorHandle;
    UNICODE_STRING CurrentDirectoryPath;
    HANDLE CurrentDirectoryHandle;
    UNICODE_STRING DllPath;
    UNICODE_STRING ImagePathName;
    UNICODE_STRING CommandLine;
    PVOID Environment;
    ULONG StartingPositionLeft;
    ULONG StartingPositionTop;
    ULONG Width;
    ULONG Height;
    ULONG CharWidth;
    ULONG CharHeight;
    ULONG ConsoleTextAttributes;
    ULONG WindowFlags;
    ULONG ShowWindowFlags;
    UNICODE_STRING WindowTitle;
    UNICODE_STRING DesktopName;
    UNICODE_STRING ShellInfo;
    UNICODE_STRING RuntimeData;
    RTL_DRIVE_LETTER_CURDIR DLCurrentDirectory[0x20];
} __attribute__((packed));
typedef struct _RTL_USER_PROCESS_PARAMETERS RTL_USER_PROCESS_PARAMETERS;
typedef target_ptr_t PRTL_USER_PROCESS_PARAMETERS;

typedef target_ptr_t PPEB_FREE_BLOCK;
struct _PEB_FREE_BLOCK {
    PPEB_FREE_BLOCK Next;
    ULONG Size;
} __attribute__((packed));
typedef struct _PEB_FREE_BLOCK PEB_FREE_BLOCK;

struct _PEB {
    BOOLEAN InheritedAddressSpace;
    BOOLEAN ReadImageFileExecOptions;
    BOOLEAN BeingDebugged;
    BOOLEAN Spare;
    HANDLE Mutant;
    PVOID ImageBaseAddress;
    PPEB_LDR_DATA LoaderData;
    PRTL_USER_PROCESS_PARAMETERS ProcessParameters;
    PVOID SubSystemData;
    PVOID ProcessHeap;
    PVOID FastPebLock;
    PPEBLOCKROUTINE FastPebLockRoutine;
    PPEBLOCKROUTINE FastPebUnlockRoutine;
    ULONG EnvironmentUpdateCount;
    PPVOID KernelCallbackTable;
    PVOID EventLogSection;
    PVOID EventLog;
    PPEB_FREE_BLOCK FreeList;
    ULONG TlsExpansionCounter;
    PVOID TlsBitmap;
    ULONG TlsBitmapBits[0x2];
    PVOID ReadOnlySharedMemoryBase;
    PVOID ReadOnlySharedMemoryHeap;
    PPVOID ReadOnlyStaticServerData;
    PVOID AnsiCodePageData;
    PVOID OemCodePageData;
    PVOID UnicodeCaseTableData;
    ULONG NumberOfProcessors;
    ULONG NtGlobalFlag;
    BYTE Spare2[0x4];
    LARGE_INTEGER CriticalSectionTimeout;
    ULONG HeapSegmentReserve;
    ULONG HeapSegmentCommit;
    ULONG HeapDeCommitTotalFreeThreshold;
    ULONG HeapDeCommitFreeBlockThreshold;
    ULONG NumberOfHeaps;
    ULONG MaximumNumberOfHeaps;
    PPVOID ProcessHeaps;
    PVOID GdiSharedHandleTable;
    PVOID ProcessStarterHelper;
    PVOID GdiDCAttributeList;
    PVOID LoaderLock;
    ULONG OSMajorVersion;
    ULONG OSMinorVersion;
    ULONG OSBuildNumber;
    ULONG OSPlatformId;
    ULONG ImageSubSystem;
    ULONG ImageSubSystemMajorVersion;
    ULONG ImageSubSystemMinorVersion;
    ULONG GdiHandleBuffer[0x22];
    ULONG PostProcessInitRoutine;
    ULONG TlsExpansionBitmap;
    BYTE TlsExpansionBitmapBits[0x80];
    ULONG SessionId;
} __attribute__((packed));
typedef struct _PEB PEB;
typedef target_ptr_t PPEB;

typedef target_ptr_t PEXCEPTION_RECORD;
struct _EXCEPTION_RECORD
{
    LONG ExceptionCode;
    ULONG ExceptionFlags;
    PEXCEPTION_RECORD ExceptionRecord;
    PVOID ExceptionAddress;
    ULONG NumberParameters;
    ULONG ExceptionInformation[15];
} __attribute__((packed));
typedef struct _EXCEPTION_RECORD EXCEPTION_RECORD;

typedef target_ptr_t PEXCEPTION_REGISTRATION_RECORD;
struct _EXCEPTION_REGISTRATION_RECORD {
    PEXCEPTION_REGISTRATION_RECORD Next;
    PVOID Handler;
} __attribute__((packed));
typedef struct _EXCEPTION_REGISTRATION_RECORD EXCEPTION_REGISTRATION_RECORD;

typedef target_ptr_t PNT_TIB;
struct _NT_TIB
{
    PEXCEPTION_REGISTRATION_RECORD ExceptionList;
    PVOID StackBase;
    PVOID StackLimit;
    PVOID SubSystemTib;
    union
    {
        PVOID FiberData;
        ULONG Version;
    } __attribute((packed));
    PVOID ArbitraryUserPointer;
    PNT_TIB Self;
} __attribute__((packed));
typedef struct _NT_TIB NT_TIB;

struct _CLIENT_ID
{
    PVOID UniqueProcess;
    PVOID UniqueThread;
} __attribute__((packed));
typedef struct _CLIENT_ID CLIENT_ID;
typedef target_ptr_t PCLIENT_ID;

struct _TEB {
    NT_TIB Tib;
    PVOID EnvironmentPointer;
    CLIENT_ID Cid;
    PVOID ActiveRpcInfo;
    PVOID ThreadLocalStoragePointer;
    PPEB Peb;
    ULONG LastErrorValue;
    ULONG CountOfOwnedCriticalSections;
    PVOID CsrClientThread;
    PVOID Win32ThreadInfo;
    ULONG Win32ClientInfo[0x1F];
    PVOID WOW32Reserved;
    ULONG CurrentLocale;
    ULONG FpSoftwareStatusRegister;
    PVOID SystemReserved1[0x36];
    PVOID Spare1;
    ULONG ExceptionCode;
    ULONG SpareBytes1[0x28];
    PVOID SystemReserved2[0xA];
    ULONG GdiRgn;
    ULONG GdiPen;
    ULONG GdiBrush;
    CLIENT_ID RealClientId;
    PVOID GdiCachedProcessHandle;
    ULONG GdiClientPID;
    ULONG GdiClientTID;
    PVOID GdiThreadLocaleInfo;
    PVOID UserReserved[5];
    PVOID GlDispatchTable[0x118];
    ULONG GlReserved1[0x1A];
    PVOID GlReserved2;
    PVOID GlSectionInfo;
    PVOID GlSection;
    PVOID GlTable;
    PVOID GlCurrentRC;
    PVOID GlContext;
    NTSTATUS LastStatusValue;
    UNICODE_STRING StaticUnicodeString;
    WCHAR StaticUnicodeBuffer[0x105];
    PVOID DeallocationStack;
    PVOID TlsSlots[0x40];
    LIST_ENTRY TlsLinks;
    PVOID Vdm;
    PVOID ReservedForNtRpc;
    PVOID DbgSsReserved[0x2];
    ULONG HardErrorDisabled;
    PVOID Instrumentation[0x10];
    PVOID WinSockData;
    ULONG GdiBatchCount;
    ULONG Spare2;
    ULONG Spare3;
    ULONG Spare4;
    PVOID ReservedForOle;
    ULONG WaitingOnLoaderLock;
    PVOID StackCommit;
    PVOID StackCommitMax;
    PVOID StackReserved;
} __attribute__((packed));
typedef struct _TEB TEB;
typedef target_ptr_t PTEB;

#define IMAGE_DOS_SIGNATURE 0x5A4D
struct _IMAGE_DOS_HEADER
{
    WORD e_magic;
    WORD e_cblp;
    WORD e_cp;
    WORD e_crlc;
    WORD e_cparhdr;
    WORD e_minalloc;
    WORD e_maxalloc;
    WORD e_ss;
    WORD e_sp;
    WORD e_csum;
    WORD e_ip;
    WORD e_cs;
    WORD e_lfarlc;
    WORD e_ovno;
    WORD e_res[4];
    WORD e_oemid;
    WORD e_oeminfo;
    WORD e_res2[10];
    LONG e_lfanew;
} __attribute__((packed));
typedef struct _IMAGE_DOS_HEADER IMAGE_DOS_HEADER;
typedef target_ptr_t PIMAGE_DOS_HEADER;

struct _IMAGE_FILE_HEADER {
    WORD  Machine;
    WORD  NumberOfSections;
    DWORD TimeDateStamp;
    DWORD PointerToSymbolTable;
    DWORD NumberOfSymbols;
    WORD  SizeOfOptionalHeader;
    WORD  Characteristics;
} __attribute__((packed));
typedef struct _IMAGE_FILE_HEADER IMAGE_FILE_HEADER;
typedef target_ptr_t PIMAGE_FILE_HEADER;

struct _IMAGE_DATA_DIRECTORY {
    DWORD VirtualAddress;
    DWORD Size;
} __attribute__((packed));
typedef struct _IMAGE_DATA_DIRECTORY IMAGE_DATA_DIRECTORY;
typedef target_ptr_t PIMAGE_DATA_DIRECTORY;

#define IMAGE_NUMBEROF_DIRECTORY_ENTRIES 16
struct _IMAGE_OPTIONAL_HEADER {
    WORD                 Magic;
    BYTE                 MajorLinkerVersion;
    BYTE                 MinorLinkerVersion;
    DWORD                SizeOfCode;
    DWORD                SizeOfInitializedData;
    DWORD                SizeOfUninitializedData;
    DWORD                AddressOfEntryPoint;
    DWORD                BaseOfCode;
    DWORD                BaseOfData;
    DWORD                ImageBase;
    DWORD                SectionAlignment;
    DWORD                FileAlignment;
    WORD                 MajorOperatingSystemVersion;
    WORD                 MinorOperatingSystemVersion;
    WORD                 MajorImageVersion;
    WORD                 MinorImageVersion;
    WORD                 MajorSubsystemVersion;
    WORD                 MinorSubsystemVersion;
    DWORD                Win32VersionValue;
    DWORD                SizeOfImage;
    DWORD                SizeOfHeaders;
    DWORD                CheckSum;
    WORD                 Subsystem;
    WORD                 DllCharacteristics;
    DWORD                SizeOfStackReserve;
    DWORD                SizeOfStackCommit;
    DWORD                SizeOfHeapReserve;
    DWORD                SizeOfHeapCommit;
    DWORD                LoaderFlags;
    DWORD                NumberOfRvaAndSizes;
    IMAGE_DATA_DIRECTORY DataDirectory[IMAGE_NUMBEROF_DIRECTORY_ENTRIES];
} __attribute__((packed));
typedef struct _IMAGE_OPTIONAL_HEADER IMAGE_OPTIONAL_HEADER;
typedef target_ptr_t PIMAGE_OPTIONAL_HEADER;

#define IMAGE_PE_SIGNATURE 0x00004550
struct _IMAGE_NT_HEADERS {
    DWORD                 Signature;
    IMAGE_FILE_HEADER     FileHeader;
    IMAGE_OPTIONAL_HEADER OptionalHeader;
} __attribute__((packed));
typedef struct _IMAGE_NT_HEADERS IMAGE_NT_HEADERS;
typedef target_ptr_t PIMAGE_NT_HEADERS;

struct _IMAGE_EXPORT_DIRECTORY {
    DWORD Characteristics;
    DWORD TimeDateStamp;
    WORD MajorVersion;
    WORD MinorVersion;
    DWORD Name;
    DWORD Base;
    DWORD NumberOfFunctions;
    DWORD NumberOfNames;
    DWORD AddressOfFunctions;
    DWORD AddressOfNames;
    DWORD AddressOfNameOrdinals;
} __attribute__((packed));
typedef struct _IMAGE_EXPORT_DIRECTORY IMAGE_EXPORT_DIRECTORY;
typedef target_ptr_t PIMAGE_EXPORT_DIRECTORY;

#endif
