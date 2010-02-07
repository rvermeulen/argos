#ifndef _WINITERNL_H
#define _WINITERNL_H

#include <stdint.h>

typedef uint32_t PTR;

//typedef unsigned char BYTE;
typedef int16_t SHORT;
typedef uint16_t USHORT;
//typedef unsigned short WORD;
typedef int32_t LONG;
typedef uint32_t ULONG;
typedef int64_t LONGLONG;
typedef uint64_t ULONGLONG;
//typedef unsigned long DWORD;
typedef uint8_t CHAR;
typedef CHAR* PCHAR;
typedef uint16_t WCHAR;
typedef WCHAR* PWSTR;
typedef uint8_t BOOLEAN;
typedef void VOID;
//typedef VOID* PVOID;
typedef PTR PVOID;
//typedef PVOID* PPVOID;
typedef PTR PPVOID;
typedef LONG HANDLE;
typedef LONG NTSTATUS;
//typedef void* PPS_POST_PROCESS_INIT_ROUTINE;
typedef PTR PPS_POST_PROCESS_INIT_ROUTINE;
typedef void (*PPEBLOCKROUTINE)(PVOID PebLock); 

typedef union _LARGE_INTEGER {
    struct {
        DWORD LowPart;
        LONG HighPart;
    };

    struct {
        DWORD LowPart;
        LONG HighPart;
    } u;
    LONGLONG QuadPart;
} LARGE_INTEGER, *PLARGE_INTEGER __attribute__((aligned (4)));

typedef struct _LIST_ENTRY {
    //struct _LIST_ENTRY *Flink;
    PVOID Flink;
    //struct _LIST_ENTRY *Blink;
    PVOID Blink;
} LIST_ENTRY, *PLIST_ENTRY __attribute__((aligned (4)));

typedef struct _STRING {
    USHORT  Length;
    USHORT  MaximumLength;
    //PCHAR  Buffer;
    PVOID Buffer;
} ANSI_STRING, *PANSI_STRING __attribute__((aligned (4)));

typedef struct _LSA_UNICODE_STRING {
    USHORT Length;
    USHORT MaximumLength;
    //PWSTR  Buffer;
    PVOID Buffer;
}LSA_UNICODE_STRING, *PLSA_UNICODE_STRING, UNICODE_STRING, *PUNICODE_STRING __attribute__((aligned (4)));

typedef struct _PEB_LDR_DATA {
    ULONG Length; 
    BOOLEAN Initialized; 
    PVOID SsHandle; 
    LIST_ENTRY InLoadOrderModuleList; 
    LIST_ENTRY InMemoryOrderModuleList; 
    LIST_ENTRY InInitializationOrderModuleList;
} PEB_LDR_DATA, *PPEB_LDR_DATA __attribute__((aligned (4)));

typedef struct _LDR_DATA_TABLE_ENTRY {
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
} LDR_DATA_TABLE_ENTRY, *PLDR_DATA_TABLE_ENTRY __attribute__((aligned (4)));

typedef struct _RTL_DRIVE_LETTER_CURDIR {
    USHORT Flags; 
    USHORT Length; 
    ULONG TimeStamp;
    UNICODE_STRING DosPath;
} RTL_DRIVE_LETTER_CURDIR, *PRTL_DRIVE_LETTER_CURDIR __attribute__((aligned (4)));

typedef struct _RTL_USER_PROCESS_PARAMETERS {
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
} RTL_USER_PROCESS_PARAMETERS, *PRTL_USER_PROCESS_PARAMETERS __attribute__((aligned (4)));

typedef struct _PEB_FREE_BLOCK {
    //struct _PEB_FREE_BLOCK *Next;
    PVOID Next;
    ULONG Size;
} PEB_FREE_BLOCK, *PPEB_FREE_BLOCK __attribute__((aligned (4)));

typedef struct _PEB {
    BOOLEAN InheritedAddressSpace; 
    BOOLEAN ReadImageFileExecOptions; 
    BOOLEAN BeingDebugged; 
    BOOLEAN Spare; 
    HANDLE Mutant; 
    PVOID ImageBaseAddress; 
    //PPEB_LDR_DATA LoaderData;
    PVOID LoaderData;
    //PRTL_USER_PROCESS_PARAMETERS ProcessParameters;
    PVOID ProcessParameters;
    PVOID SubSystemData; 
    PVOID ProcessHeap; 
    PVOID FastPebLock; 
    //PPEBLOCKROUTINE FastPebLockRoutine; 
    PVOID FastPebLockRoutine;
    //PPEBLOCKROUTINE FastPebUnlockRoutine;
    PVOID FastPebUnlockRoutine;
    ULONG EnvironmentUpdateCount; 
    PPVOID KernelCallbackTable; 
    PVOID EventLogSection; 
    PVOID EventLog; 
    //PPEB_FREE_BLOCK FreeList;
    PVOID FreeList;
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
} PEB, *PPEB __attribute__((aligned (4)));

typedef struct _EXCEPTION_RECORD
{
    LONG ExceptionCode;
    ULONG ExceptionFlags;
    //struct _EXCEPTION_RECORD* ExceptionRecord;
    PVOID ExceptionRecord;
    PVOID ExceptionAddress;
    ULONG NumberParameters;
    ULONG ExceptionInformation[15];
} EXCEPTION_RECORD, *PEXCEPTION_RECORD __attribute__((aligned (4)));

typedef struct _EXCEPTION_REGISTRATION_RECORD {
    //struct _EXCEPTION_REGISTRATION_RECORD* Next;
    PVOID Next;
    PVOID Handler;
} EXCEPTION_REGISTRATION_RECORD, *PEXCEPTION_REGISTRATION_RECORD __attribute__((aligned (4)));

typedef struct _NT_TIB
{
    //PEXCEPTION_REGISTRATION_RECORD ExceptionList;
    PVOID ExceptionList;
    PVOID StackBase;
    PVOID StackLimit;
    PVOID SubSystemTib;
    union
    {
        PVOID FiberData;
        ULONG Version;
    };
    PVOID ArbitraryUserPointer;
    //struct _NT_TIB* Self;
    PVOID Self;
} NT_TIB, *PNT_TIB __attribute__((aligned (4)));

typedef struct _CLIENT_ID
{
    PVOID UniqueProcess;
    PVOID UniqueThread;
} CLIENT_ID, *PCLIENT_ID __attribute__((aligned (4)));

typedef struct _TEB {
    NT_TIB Tib; 
    PVOID EnvironmentPointer; 
    CLIENT_ID Cid; 
    PVOID ActiveRpcInfo; 
    PVOID ThreadLocalStoragePointer; 
    //PPEB Peb;
    PVOID Peb;
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
} TEB, *PTEB __attribute__((aligned (4)));

#define IMAGE_DOS_SIGNATURE 0x5A4D
typedef struct _IMAGE_DOS_HEADER
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
} IMAGE_DOS_HEADER, *PIMAGE_DOS_HEADER __attribute__((aligned (4)));

typedef struct _IMAGE_FILE_HEADER {
    WORD  Machine;
    WORD  NumberOfSections;
    DWORD TimeDateStamp;
    DWORD PointerToSymbolTable;
    DWORD NumberOfSymbols;
    WORD  SizeOfOptionalHeader;
    WORD  Characteristics;
} IMAGE_FILE_HEADER, *PIMAGE_FILE_HEADER __attribute__((aligned (4)));

typedef struct _IMAGE_DATA_DIRECTORY {
      DWORD VirtualAddress;
        DWORD Size;
} IMAGE_DATA_DIRECTORY, *PIMAGE_DATA_DIRECTORY __attribute__((aligned (4)));

#define IMAGE_NUMBEROF_DIRECTORY_ENTRIES 16
typedef struct _IMAGE_OPTIONAL_HEADER {
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
} IMAGE_OPTIONAL_HEADER, *PIMAGE_OPTIONAL_HEADER __attribute__((aligned (4)));

#define IMAGE_PE_SIGNATURE 0x00004550
typedef struct _IMAGE_NT_HEADERS {
    DWORD                 Signature;
    IMAGE_FILE_HEADER     FileHeader;
    IMAGE_OPTIONAL_HEADER OptionalHeader;
} IMAGE_NT_HEADERS, *PIMAGE_NT_HEADERS __attribute__((aligned (4)));

typedef struct _IMAGE_EXPORT_DIRECTORY {
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
} IMAGE_EXPORT_DIRECTORY, *PIMAGE_EXPORT_DIRECTORY  __attribute__((aligned (4)));

#endif
