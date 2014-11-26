Name,Description,EDS,Spec,Bus,Device,Function,IOType,Path String,Parent Field Name,Register Name, Error Type, Offset, Actual, Expected,Help, Comment
Power Management,Power Management Checklist,NA,NA,-1,-1,-1,memory,B00 D14 F0 - XHCI Controller\Host Controller Operational Registers,816Ch Reserved,[16] Reserved,ERROR,816c,0x0,0x1,,
Power Management,Power Management Checklist,NA,NA,-1,-1,-1,,B00 D1C F0 - PCI Express Controller,E1h  Root Port Dynamic Clock Gating Enable,[6] Reserved,ERROR,e1,0x0,0x1,,
Power Management,Power Management Checklist,NA,NA,-1,-1,-1,,B00 D1C F0 - PCI Express Controller,E2h Reserved,[5] Reserved,ERROR,e2,0x0,0x1,,
Power Management,Power Management Checklist,NA,NA,-1,-1,-1,,B00 D1C F0 - PCI Express Controller,E2h Reserved,[4] Reserved,ERROR,e2,0x0,0x1,,
Power Management,Power Management Checklist,NA,NA,-1,-1,-1,,B00 D1C F0 - PCI Express Controller,208h L1SCTL1—L1 Sub-states Control 1,[3] ASPM L1 Sub-states Enabled (AL1SE),ERROR,208,0x0,0x1,"Attribute: R/W
Default: 0
When set, this bit indicates that L1 sub-states are enabled for ASPM.
Required for both upstream and downstream ports.
NOTE: Refer to BIOS Spec for recommended settings.",
Power Management,Power Management Checklist,NA,NA,-1,-1,-1,,B00 D1C F0 - PCI Express Controller,208h L1SCTL1—L1 Sub-states Control 1,[2] PCI-PM L1 Sub-states Enabled (PPL1SE),ERROR,208,0x0,0x1,"Attribute: R/W
Default: 0
When set, this bit indicates that L1 sub-states are enabled for PCI-PM.
Required for both upstream and downstream ports.
NOTE: Refer to BIOS Spec for recommended settings",
Power Management,Power Management Checklist,NA,NA,-1,-1,-1,,B00 D1C F0 - PCI Express Controller,208h L1SCTL1—L1 Sub-states Control 1,[1] L1.SNOOZ Enable (L1SE),ERROR,208,0x0,0x1,"Attribute: R/W
Default: 0
When set, this bit indicates that L1.SNOOZ power management feature is enabled. If
L1.OFF is enabled, L1.SNOOZ must also be enabled.
This field must be programmed prior to enabling ASPM L1.
NOTE: Refer to BIOS Spec for recommended settings",
Power Management,Power Management Checklist,NA,NA,-1,-1,-1,,B00 D1C F0 - PCI Express Controller,208h L1SCTL1—L1 Sub-states Control 1,[0] L1.OFF Enable (L1OE),ERROR,208,0x0,0x1,"Attribute: R/W
Default: 0
When set, this bit indicates that L1.OFF power management feature is enabled. L1.OFF
can only be enabled if platform supports bi-directional CLKREQPLUS#.
This field must be programmed prior to enabling ASPM L1.
Ports that support L1.OFF shall support Latency Tolerance Reporting.
NOTE: Refer to BIOS Spec for recommended settings.",
Power Management,Power Management Checklist,NA,NA,-1,-1,-1,,B00 D1C F0 - PCI Express Controller,408h Reserved,[27] Reserved,ERROR,408,0x0,0x1,,
Power Management,Power Management Checklist,NA,NA,-1,-1,-1,,B00 D1C F0 - PCI Express Controller,420h Reserved,[30] Reserved,ERROR,420,0x0,0x1,,
Power Management,Power Management Checklist,NA,NA,-1,-1,-1,,B00 D1C F0 - PCI Express Controller,420h Reserved,[29] Reserved,ERROR,420,0x0,0x1,,
Power Management,Power Management Checklist,NA,NA,-1,-1,-1,,B00 D1C F0 - PCI Express Controller,420h Reserved,[0] Reserved,ERROR,420,0x0,0x1,,
Power Management,Power Management Checklist,NA,NA,-1,-1,-1,,B00 D1C F1 - PCI Express Controller,208h L1SCTL1—L1 Sub-states Control 1,[3] ASPM L1 Sub-states Enabled (AL1SE),ERROR,208,0x0,0x1,"Attribute: R/W
Default: 0
When set, this bit indicates that L1 sub-states are enabled for ASPM.
Required for both upstream and downstream ports.
NOTE: Refer to BIOS Spec for recommended settings.",
Power Management,Power Management Checklist,NA,NA,-1,-1,-1,,B00 D1C F1 - PCI Express Controller,208h L1SCTL1—L1 Sub-states Control 1,[2] PCI-PM L1 Sub-states Enabled (PPL1SE),ERROR,208,0x0,0x1,"Attribute: R/W
Default: 0
When set, this bit indicates that L1 sub-states are enabled for PCI-PM.
Required for both upstream and downstream ports.
NOTE: Refer to BIOS Spec for recommended settings",
Power Management,Power Management Checklist,NA,NA,-1,-1,-1,,B00 D1C F1 - PCI Express Controller,208h L1SCTL1—L1 Sub-states Control 1,[1] L1.SNOOZ Enable (L1SE),ERROR,208,0x0,0x1,"Attribute: R/W
Default: 0
When set, this bit indicates that L1.SNOOZ power management feature is enabled. If
L1.OFF is enabled, L1.SNOOZ must also be enabled.
This field must be programmed prior to enabling ASPM L1.
NOTE: Refer to BIOS Spec for recommended settings",
Power Management,Power Management Checklist,NA,NA,-1,-1,-1,,B00 D1C F1 - PCI Express Controller,208h L1SCTL1—L1 Sub-states Control 1,[0] L1.OFF Enable (L1OE),ERROR,208,0x0,0x1,"Attribute: R/W
Default: 0
When set, this bit indicates that L1.OFF power management feature is enabled. L1.OFF
can only be enabled if platform supports bi-directional CLKREQPLUS#.
This field must be programmed prior to enabling ASPM L1.
Ports that support L1.OFF shall support Latency Tolerance Reporting.
NOTE: Refer to BIOS Spec for recommended settings.",
Power Management,Power Management Checklist,NA,NA,-1,-1,-1,,B00 D1C F1 - PCI Express Controller,408h Reserved,[27] Reserved,ERROR,408,0x0,0x1,,
Power Management,Power Management Checklist,NA,NA,-1,-1,-1,,B00 D1C F1 - PCI Express Controller,420h Reserved,[0] Reserved,ERROR,420,0x0,0x1,,
Power Management,Power Management Checklist,NA,NA,-1,-1,-1,,B00 D1C F3 - PCI Express Controller,408h Reserved,[27] Reserved,ERROR,408,0x0,0x1,,
TXT Info,Intel(R) Trusted Execution Technology,Intel(R) TXT Software Development Guide March 2011,TXT Bios Spec 2.1,-1,-1,-1,memory,TXTINFO,TXT Public Registers FED30000h,270h TXT.SINIT.BASE,ERROR,6f632072,0x0000000000000000,,"This register contains the physical base address of the memory region set aside by the BIOS for loading an SINIT AC module. The system software reads this register to locate the SINIT module (which may have been loaded by the BIOS) or to find a location to load the SINIT module.
Public: RW
Private: RW",SINIT region not allocated.
TXT Info,Intel(R) Trusted Execution Technology,Intel(R) TXT Software Development Guide March 2011,TXT Bios Spec 2.1,-1,-1,-1,memory,TXTINFO,TXT Public Registers FED30000h,278h TXT.SINIT.SIZE,ERROR,6f632072,0x0000000000000000,>= 0x20000,"This register contains the size in bytes of the memory region set aside by the BIOS for loading an SINIT AC module. This register is initialized by the BIOS. The system software may read this register when loading an SINIT module.
Public: RW
Private: RW",SINIT region is either not allocated or too small.
TXT Info,Intel(R) Trusted Execution Technology,Intel(R) TXT Software Development Guide March 2011,TXT Bios Spec 2.1,-1,-1,-1,memory,TXTINFO,TXT Public Registers FED30000h,300h TXT.HEAP.BASE,ERROR,6f632072,0x0000000000000000,,"This register contains the physical base address of the Intel TXT Heap memory region. The BIOS initializes this register. The system software and MLE read this register to locate the Intel TXT Heap.
Public: RW
Private: RW",HEAP region not allocated.
TXT Info,Intel(R) Trusted Execution Technology,Intel(R) TXT Software Development Guide March 2011,TXT Bios Spec 2.1,-1,-1,-1,memory,TXTINFO,TXT Public Registers FED30000h,308h TXT.HEAP.SIZE,ERROR,6f632072,0x0000000000000000,>= 0xE0000,"This register contains the size in bytes of the Intel TXT Heap memory region. The BIOS initializes this register. The system software and the MLE read this register to determine the Intel TXT Heap size.
Public: RW
Private: RW",Heap region is either not allocated or too small.
TXT Info,Intel(R) Trusted Execution Technology,Intel(R) TXT Software Development Guide March 2011,TXT Bios Spec 2.1,-1,-1,-1,memory,TXTINFO,TXT Public Registers FED30000h,330h TXT.DPR,ERROR,6c616369,0x0000000000000000,,,DPR region is either not allocated or not locked.
TXT Info,Intel(R) Trusted Execution Technology,Intel(R) TXT Software Development Guide March 2011,TXT Bios Spec 2.1,-1,-1,-1,,TXTINFO,Logical CPU Threads,Feature Control (MSR 3Ah),ERROR,74207966,,,Test to verify that Feature Control MSR is porgrammed correctly across all CPU threads,Refer to TXT BIOS spec rev 1.8 Section 5 "CPU Initialization" for more information.
TXT Info,Intel(R) Trusted Execution Technology,Intel(R) TXT Software Development Guide March 2011,TXT Bios Spec 2.1,-1,-1,-1,,TXTINFO\TPM,LCP - AUX,Reserved,ERROR,20726f66,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF,,,NV AUX index is not initialized.
TXT Info,Intel(R) Trusted Execution Technology,Intel(R) TXT Software Development Guide March 2011,TXT Bios Spec 2.1,-1,-1,-1,,TXTINFO\TPM,TPM_PERMANENT_FLAGS,disable,ERROR,6874206f,TRUE,FALSE,The state of the disable flag. The default state is TRUE,TPM Error: TPM is disabled.
TXT Info,Intel(R) Trusted Execution Technology,Intel(R) TXT Software Development Guide March 2011,TXT Bios Spec 2.1,-1,-1,-1,,TXTINFO\TPM,TPM_STCLEAR_FLAGS,deactivated,ERROR,0,TRUE,FALSE,"Prevents the operation of most capabilities. There is no
default state. It is initialized by TPM_Startup to the same
value as TPM_PERMANENT_FLAGS -> deactivated or a set
value depending on the type of TPM_Startup.
TPM_SetTempDeactivated sets it to TRUE.",TPM Error: TPM is deactivated.
TXT Info,Intel(R) Trusted Execution Technology,Intel(R) TXT Software Development Guide March 2011,TXT Bios Spec 2.1,-1,-1,-1,,,TXTINFO,TXT STATUS,ERROR,20736968,,,,"FAILURE:
The platform's configuration does not appear to be ready to support Intel(R) TXT."
VT_d,Intel(R) VT,,Intel(R) VT-d Architecture Specification Rev2.0,-1,-1,-1,,,B00 D00 F0,Assertion #1: Check DMAR table presence,ERROR,0,,,"Assert that the DMAR table is present in ACPI space
Applicable to both Clients and Servers
This assertion verifies that a table with the signature DMAR (all uppercase) is enumerated in the ACPI space exposed by the platform firmware.
This assertion is derived from the VT-d specification which requires that a table with the signature DMAR be enumerated in ACPI space for all implementations that support VT-d.","DMAR Table not found in ACPI space
."
AntiTheft,Anti-Theft Technology,NA,Intel® Anti-Theft Technology 4.0 BWG Rev0.9,-1,-1,-1,,,,SMBios Type 131 Offset 18h[13] Intel® AT supported,ERROR,0,0x0,0x1,,
Haswell Logo,Platform Secure Configuration Specification Rev 0.5,,,-1,-1,-1,,,2.2.1 CPU Security Configuration,4. MSR 4E0[0] SMM_FEATURE_CONTROL MSR Lock,ERROR,465f4d4d,0,1,Locks down SMM_FEATURE_CONTROL  MSR containing enable bits for “SMM code fetch violation” check,FAIL
Haswell Logo,Platform Secure Configuration Specification Rev 0.5,,,-1,-1,-1,,,2.2.5 SPI Flash and BIOS Security Configuration,11. SPIBASE 50[15:8] BIOS Region Flash Write Access,ERROR,6f432068,4A,A,"The BIOS Region Write Access field (BRWA) of the PCH's BIOS Flash Regions Access Permissions (FRAP) Register must be set appropriately.  BIOS may write to flash regions 3 (GbE) and 1 (BIOS), and not to regions 2 (ME FW) and 0 (Descriptor).",FAIL
Haswell Logo,Platform Secure Configuration Specification Rev 0.5,,,-1,-1,-1,,,2.2.5 SPI Flash and BIOS Security Configuration,12. SPIBASE 50[7:0] BIOS Region Flash Read Access,ERROR,0,4B,B,"The BIOS Region Read Access field (BRRA) of the PCH's Flash Regions Access Permissions (FRAP) Register for BIOS must be set appropriately. BIOS may read from flash regions 3 (GbE), 1 (BIOS) and 0 (Descriptor), and not from region 2 (ME firmware).",FAIL
Haswell Logo,Platform Secure Configuration Specification Rev 0.5,,,-1,-1,-1,,,,Number of errors found,ERROR,46502074,,,Overall test results,Fail!  Found 5 violations
Lynxpoint LP BIOS Spec,Lynxpoint LP BIOS Spec 1.6,,1.0,-1,-1,-1,memory,B00 D1B F0 - Audio Controller\Memory Mapped Configuration Registers,12h GCAP2 Global Capabilities 2 Register,[0] Energy Efficient Audio Capability (EEAC),ERROR,10,0x0,0x1,"Attribute: R/WL
Default: 0
Indicates whether the energy
efficient audio with deeper buffering is supported or not.
0 = Not supported.
1 = Supported.
Locked when HDCTL.BCLD = 1.",See BIOS Spec Section 22.9.5 Additional High Definition Audio Programming Steps
Lynxpoint LP BIOS Spec,Lynxpoint LP BIOS Spec 1.6,,1.0,-1,-1,-1,,B00 D1C F0 - PCI Express Controller,68h DCTL2 - Device Control 2 Register,[14:13] Reserved,ERROR,68,0x0,0x3,"Default: 0
",See BIOS Section Spec 22.8.14.1Power Optimizer Configuration
Lynxpoint LP BIOS Spec,Lynxpoint LP BIOS Spec 1.6,,1.0,-1,-1,-1,,B00 D1C F0 - PCI Express Controller,E8h PECR1 - PCI Express* Configuration Register 1,[0] Reserved,ERROR,e8,0x0,0x1,"Default: 0
","See BIOS Spec Section 19.10 Enabling Clock Gating

See BIOS Spec Section 19.10 Enabling Clock Gating"
Lynxpoint LP BIOS Spec,Lynxpoint LP BIOS Spec 1.6,,1.0,-1,-1,-1,,B00 D1C F0 - PCI Express Controller,100h Reserved,[29] Reserved,ERROR,100,0x0,0x1,"Attribute: R/WC
Indicates an unsupported request was received.",See BIOS Spec Section 22.8.14 Additional PCI Express* Programming Steps
Lynxpoint LP BIOS Spec,Lynxpoint LP BIOS Spec 1.6,,1.0,-1,-1,-1,,B00 D1C F1 - PCI Express Controller,64h DCAP2 - Device Capabilities 2 Register,[19:18] Reserved,ERROR,64,0x0,0x2,"Default: 0
",See BIOS Section Spec 22.8.14.1Power Optimizer Configuration
Lynxpoint LP BIOS Spec,Lynxpoint LP BIOS Spec 1.6,,1.0,-1,-1,-1,,B00 D1C F1 - PCI Express Controller,68h DCTL2 - Device Control 2 Register,[14:13] Reserved,ERROR,68,0x0,0x3,"Default: 0
",See BIOS Section Spec 22.8.14.1Power Optimizer Configuration
Lynxpoint LP BIOS Spec,Lynxpoint LP BIOS Spec 1.6,,1.0,-1,-1,-1,,B00 D1C F1 - PCI Express Controller,E1h RPDCGEN - Root Port Dynamic Clock Gating Enable Register,[5:2]  Reserved,ERROR,e1,0x0,0xF,"Attribute: R/W
Default: 0
","See BIOS Spec Section 19.10 Enabling Clock Gating

See BIOS Spec Section 19.10 Enabling Clock Gating"
Lynxpoint LP BIOS Spec,Lynxpoint LP BIOS Spec 1.6,,1.0,-1,-1,-1,,B00 D1C F1 - PCI Express Controller,F4h Reserved,[7] Reserved,ERROR,f4,0x0,0x1,"Attribute: R/W
Default: 0
","See BIOS Spec Section 22.8.14Additional PCI Express* Programming Steps

Function 0 only"
Lynxpoint LP BIOS Spec,Lynxpoint LP BIOS Spec 1.6,,1.0,-1,-1,-1,,B00 D1C F1 - PCI Express Controller,F4h Reserved,[6:5] Reserved,ERROR,f4,0x2,0x0,"Attribute: R/W
Default: 0
","See BIOS Spec Section 22.8.14Additional PCI Express* Programming Steps

Function 0 only"
Lynxpoint LP BIOS Spec,Lynxpoint LP BIOS Spec 1.6,,1.0,-1,-1,-1,,B00 D1C F1 - PCI Express Controller,F5h Reserved,[3:0] Reserved,ERROR,f5,0x0,0x5,"Attribute: R/W
Default: 0
","See BIOS Spec Section 22.19.4 Additional Power Management Programming

See BIOS Spec Section 22.19.4 Additional Power Management Programming"
Lynxpoint LP BIOS Spec,Lynxpoint LP BIOS Spec 1.6,,1.0,-1,-1,-1,,B00 D1C F1 - PCI Express Controller,F7h Reserved,[3:2] Reserved,ERROR,f7,0x3,0x0,"Attribute: R/W
Default: 0
","See BIOS Spec Section 22.8.14 Additional PCI Express* Programming Steps

Function 0, Function 4 and Function 5 only"
Lynxpoint LP BIOS Spec,Lynxpoint LP BIOS Spec 1.6,,1.0,-1,-1,-1,,B00 D1C F3 - PCI Express Controller,64h DCAP2 - Device Capabilities 2 Register,[19:18] Reserved,ERROR,64,0x0,0x2,"Default: 0
",See BIOS Section Spec 22.8.14.1Power Optimizer Configuration
Lynxpoint LP BIOS Spec,Lynxpoint LP BIOS Spec 1.6,,1.0,-1,-1,-1,,B00 D1C F3 - PCI Express Controller,68h DCTL2 - Device Control 2 Register,[14:13] Reserved,ERROR,68,0x0,0x3,"Default: 0
",See BIOS Section Spec 22.8.14.1Power Optimizer Configuration
Lynxpoint LP BIOS Spec,Lynxpoint LP BIOS Spec 1.6,,1.0,-1,-1,-1,,B00 D1C F3 - PCI Express Controller,E1h RPDCGEN - Root Port Dynamic Clock Gating Enable Register,[5:2]  Reserved,ERROR,e1,0x0,0xF,"Attribute: R/W
Default: 0
","See BIOS Spec Section 19.10 Enabling Clock Gating

See BIOS Spec Section 19.10 Enabling Clock Gating"
Lynxpoint LP BIOS Spec,Lynxpoint LP BIOS Spec 1.6,,1.0,-1,-1,-1,,B00 D1C F3 - PCI Express Controller,F4h Reserved,[7] Reserved,ERROR,f4,0x0,0x1,"Attribute: R/W
Default: 0
","See BIOS Spec Section 22.8.14Additional PCI Express* Programming Steps

Function 0 only"
Lynxpoint LP BIOS Spec,Lynxpoint LP BIOS Spec 1.6,,1.0,-1,-1,-1,,B00 D1C F3 - PCI Express Controller,F4h Reserved,[6:5] Reserved,ERROR,f4,0x2,0x0,"Attribute: R/W
Default: 0
","See BIOS Spec Section 22.8.14Additional PCI Express* Programming Steps

Function 0 only"
Lynxpoint LP BIOS Spec,Lynxpoint LP BIOS Spec 1.6,,1.0,-1,-1,-1,,B00 D1C F3 - PCI Express Controller,F5h Reserved,[3:0] Reserved,ERROR,f5,0x0,0x5,"Attribute: R/W
Default: 0
","See BIOS Spec Section 22.19.4 Additional Power Management Programming

See BIOS Spec Section 22.19.4 Additional Power Management Programming"
Lynxpoint LP BIOS Spec,Lynxpoint LP BIOS Spec 1.6,,1.0,-1,-1,-1,,B00 D1C F3 - PCI Express Controller,F7h Reserved,[3:2] Reserved,ERROR,f7,0x3,0x0,"Attribute: R/W
Default: 0
","See BIOS Spec Section 22.8.14 Additional PCI Express* Programming Steps

Function 0, Function 4 and Function 5 only"
Lynxpoint LP BIOS Spec,Lynxpoint LP BIOS Spec 1.6,,1.0,-1,-1,-1,memory,B00 D1D F0 - EHCI #1 Controller\Host Controller Capability Registers,20h CMD - USB 2.0 Command Register,[1] Host Controller Reset (HCRESET),ERROR,20,0x0,0x1,"Attribute: R/W
Default: 0
This control bit used by software to reset the host controller. The effects of this on root hub registers are similar to a Chip Hardware Reset (i.e., RSMRST# assertion and PWROK deassertion on the PCH). When software writes a 1 to this bit, the host controller resets its internal pipelines, timers, counters, state machines, etc. to their initial value. Any transaction currently in progress on USB is immediately terminated. A USB reset is not driven on downstream ports.

NOTE: PCI configuration registers and Host controller capability registers are not effected by this reset.

All operational registers, including port registers and port state machines are set to their initial values. Port ownership reverts to the companion host controller(s), with the side effects described in the EHCI spec. Software must re-initialize the host controller in order to return the host controller to an operational state.

This bit is set to 0 by the host controller when the reset process is complete. Software cannot terminate the reset process early by writing a 0 to this register.

Software should not set this bit to a 1 when the HCHalted bit (D29:F0,:CAPLENGTH + 24h, bit 12) in the USB2.0_STS register is a 0. Attempting to reset an actively running host controller will result in undefined behavior. This reset me be used to leave EHCI port test modes.","D26/D29 24h [12] is 1.  This value should be set to 1

See BIOS Spec 12.9 Additional Programming Requirements during USB Initialization

See BIOS Spec Section 12.10 Additional Programming Requirements During USB Initialization"
Lynxpoint LP BIOS Spec,Lynxpoint LP BIOS Spec 1.6,,1.0,-1,-1,-1,,B00 D1F F0 - LPC Controller,A0h GEN_PMCON_1 - General PM Configuration 1 Register,[2] PCI CLKRUN# Enable (CLKRUN_EN),ERROR,a0,0x0,0x1,"Attribute: R/W
Default: 0
0 = Disable. PCH drives the CLKRUN# signal low.
1 = Enable CLKRUN# logic to control the system PCI clock using the CLKRUN# and STP_PCI# signals.

NOTES:
1. When the SLP_EN# bit is set, the PCH drives the CLKRUN# signal low regardless of the state of the CLKRUN_EN bit. This ensures that the PCI and LPC clocks continue running during a transition to a sleep state.
2. This bit should be set mutually exclusive with the PSEUDO_CLKRUN_EN bit. Setting CLKRUN_EN in a non-mobile SKU could result in unspecified behavior.","See BIOS Spec Section 19.10 Enabling Clock Gating

mobile"
Lynxpoint LP BIOS Spec,Lynxpoint LP BIOS Spec 1.6,,1.0,-1,-1,-1,memory,B00 D1F F0 - LPC Controller\Memory Mapped IO,1030h Reserved,[22] Configuration 1,ERROR,1030,0x0,0x1,"Attribute: RW
","See BIOS Spec 8.11 Subtractive Decode

"
Lynxpoint LP BIOS Spec,Lynxpoint LP BIOS Spec 1.6,,1.0,-1,-1,-1,memory,B00 D1F F0 - LPC Controller\Memory Mapped IO,3400h RC - RTC Configuration Register,[4] Upper 128 Byte Lock (UL),ERROR,3400,0x0,0x1,"Attribute: R/WLO
Default: 0
0 = Bytes not locked.
1 = Bytes 38h-3Fh in the upper 128-byte bank of RTC RAM are locked and cannot be accessed. Writes will be dropped and reads will not return any ensured data. Bit reset on system reset.","See BIOS Spec Section 5.13 BIOS Guide on Using RTC RAM

"
Lynxpoint LP BIOS Spec,Lynxpoint LP BIOS Spec 1.6,,1.0,-1,-1,-1,memory,B00 D1F F0 - LPC Controller\Memory Mapped IO,3400h RC - RTC Configuration Register,[3] Lower 128 Byte Lock (LL),ERROR,3400,0x0,0x1,"Attribute: R/WLO
Default: 0
0 = Bytes not locked.
1 = Bytes 38h-3Fh in the lower 128-byte bank of RTC RAM are locked and cannot be accessed. Writes will be dropped and reads will not return any ensured data. Bit reset on system reset.","See BIOS Spec Section 5.13 BIOS Guide on Using RTC RAM

"
Lynxpoint LP BIOS Spec,Lynxpoint LP BIOS Spec 1.6,,1.0,-1,-1,-1,index,B00 D1F F0 - LPC Controller\Intel Serial I/O IOBP Indexed Registers,ED000118h Reserved,[31:8] Reserved,ERROR,ed000118,0x0,0x37,"Attribute: R/W
Default: 0
","See BIOS Spec 22.19.4 Additional Power Management Programming

"
Lynxpoint LP BIOS Spec,Lynxpoint LP BIOS Spec 1.6,,1.0,-1,-1,-1,index,B00 D1F F0 - LPC Controller\Intel Serial I/O IOBP Indexed Registers,ED000120h Reserved,[23:22] Reserved,ERROR,ed000120,0x0,0x3,"Attribute: R/W
Default: 0
","See BIOS Spec 22.19.4 Additional Power Management Programming

"
Lynxpoint LP BIOS Spec,Lynxpoint LP BIOS Spec 1.6,,1.0,-1,-1,-1,index,B00 D1F F0 - LPC Controller\Intel Serial I/O IOBP Indexed Registers,ED00015Ch Reserved,[21] Reserved,ERROR,ed00015c,0x0,0x1,"Attribute: R/W
Default: 0
","See BIOS Spec 22.19.4 Additional Power Management Programming

"
Lynxpoint LP BIOS Spec,Lynxpoint LP BIOS Spec 1.6,,1.0,-1,-1,-1,index,B00 D1F F0 - LPC Controller\Intel Serial I/O IOBP Indexed Registers,ED00015Ch Reserved,[18] Reserved,ERROR,ed00015c,0x0,0x1,"Attribute: R/W
Default: 0
","See BIOS Spec 22.19.4 Additional Power Management Programming

"
Lynxpoint LP BIOS Spec,Lynxpoint LP BIOS Spec 1.6,,1.0,-1,-1,-1,index,B00 D1F F0 - LPC Controller\General Purpose I/O Registers,10h Reserved,[15:0] Reserved,ERROR,10,0x0,0xFFFF,"Attribute: R/W
Default: B96BA1FF
","See BIOS Spec 22.16.5 Peripheral IRQ

"
CPU 0,CPU 0,N/A,Haswell Processor Family BIOS Writer’s Guide (BWG) 1.2.0,-1,-1,-1,,,635h C_STATE_LATENCY_CONTROL_5,[12:10] Time Unit,ERROR,635,0x4,0x2,"Attribute: R/W
Default: 0
This field indicates the unit of measurement for the Interrupt Response Time Limit specified in bits [9:0] of this MSR.
000b - 1ns
001b - 32 ns
010b - 1024 ns
011b - 32768 ns
100b - 1048576 ns
101b - 33554432 ns
110b - reserved
111b - reserved","Please refer to BWG section 17.2.5.2 for more information.

"
CPU 1,CPU 1,N/A,Haswell Processor Family BIOS Writer’s Guide (BWG) 1.2.0,-1,-1,-1,,,635h C_STATE_LATENCY_CONTROL_5,[12:10] Time Unit,ERROR,635,0x4,0x2,"Attribute: R/W
Default: 0
This field indicates the unit of measurement for the Interrupt Response Time Limit specified in bits [9:0] of this MSR.
000b - 1ns
001b - 32 ns
010b - 1024 ns
011b - 32768 ns
100b - 1048576 ns
101b - 33554432 ns
110b - reserved
111b - reserved","Please refer to BWG section 17.2.5.2 for more information.

"
CPU 2,CPU 2,N/A,Haswell Processor Family BIOS Writer’s Guide (BWG) 1.2.0,-1,-1,-1,,,635h C_STATE_LATENCY_CONTROL_5,[12:10] Time Unit,ERROR,635,0x4,0x2,"Attribute: R/W
Default: 0
This field indicates the unit of measurement for the Interrupt Response Time Limit specified in bits [9:0] of this MSR.
000b - 1ns
001b - 32 ns
010b - 1024 ns
011b - 32768 ns
100b - 1048576 ns
101b - 33554432 ns
110b - reserved
111b - reserved","Please refer to BWG section 17.2.5.2 for more information.

"
CPU 3,CPU 3,N/A,Haswell Processor Family BIOS Writer’s Guide (BWG) 1.2.0,-1,-1,-1,,,635h C_STATE_LATENCY_CONTROL_5,[12:10] Time Unit,ERROR,635,0x4,0x2,"Attribute: R/W
Default: 0
This field indicates the unit of measurement for the Interrupt Response Time Limit specified in bits [9:0] of this MSR.
000b - 1ns
001b - 32 ns
010b - 1024 ns
011b - 32768 ns
100b - 1048576 ns
101b - 33554432 ns
110b - reserved
111b - reserved","Please refer to BWG section 17.2.5.2 for more information.

"
D27F0,Intel(R) High Definition Audio Controller,"EDS Spec 2.0, EDS Spec Update 1.0",BIOS Spec 1.6.1,0,27,0,memory,Memory Mapped Configuration Registers,8Ch SDLVI - Stream Descriptor Last Valid Index Register - Input Stream 0,[7:0]  Last Valid Index,ERROR,8c,0x0,>0,"Attribute: RW
Default: 0
The value written to this register indicates the index for the
last valid Buffer Descriptor in BDL. After the controller has processed this descriptor, it
will wrap back to the first descriptor in the list and continue processing.
This field must be at least 1  that is, there must be at least 2 valid entries in the buffer
descriptor list before DMA operations can begin.
This value should only modified when the RUN bit is 0.",
D27F0,Intel(R) High Definition Audio Controller,"EDS Spec 2.0, EDS Spec Update 1.0",BIOS Spec 1.6.1,0,27,0,memory,Memory Mapped Configuration Registers,ACh SDLVI - Stream Descriptor Last Valid Index Register - Input Stream 1,[7:0]  Last Valid Index,ERROR,ac,0x0,>0,"Attribute: R/W
Default: 0
The value written to this register indicates the index for the last valid Buffer Descriptor in BDL. After the controller has processed this descriptor, it will wrap back to the first descriptor in the list and continue processing.
This field must be at least 1. that is, there must be at least 2 valid entries in the buffer descriptor list before DMA operations can begin.
This value should only modified when the RUN bit is 0.",
D27F0,Intel(R) High Definition Audio Controller,"EDS Spec 2.0, EDS Spec Update 1.0",BIOS Spec 1.6.1,0,27,0,memory,Memory Mapped Configuration Registers,CCh SDLVI - Stream Descriptor Last Valid Index Register - Input Stream 2,[7:0]  Last Valid Index,ERROR,cc,0x0,>0,"Attribute: R/W
Default: 0
The value written to this register indicates the index for the last valid Buffer Descriptor in BDL. After the controller has processed this descriptor, it will wrap back to the first descriptor in the list and continue processing.
This field must be at least 1. that is, there must be at least 2 valid entries in the buffer descriptor list before DMA operations can begin.
This value should only modified when the RUN bit is 0.",
D27F0,Intel(R) High Definition Audio Controller,"EDS Spec 2.0, EDS Spec Update 1.0",BIOS Spec 1.6.1,0,27,0,memory,Memory Mapped Configuration Registers,ECh SDLVI - Stream Descriptor Last Valid Index Register - Input Stream 3,[7:0]  Last Valid Index,ERROR,ec,0x0,>0,"Attribute: R/W
Default: 0
The value written to this register indicates the index for the last valid Buffer Descriptor in BDL. After the controller has processed this descriptor, it will wrap back to the first descriptor in the list and continue processing.
This field must be at least 1. that is, there must be at least 2 valid entries in the buffer descriptor list before DMA operations can begin.
This value should only modified when the RUN bit is 0.",
D27F0,Intel(R) High Definition Audio Controller,"EDS Spec 2.0, EDS Spec Update 1.0",BIOS Spec 1.6.1,0,27,0,memory,Memory Mapped Configuration Registers,10Ch SDLVI - Stream Descriptor Last Valid Index Register - Output Stream 0,[7:0]  Last Valid Index,ERROR,10c,0x0,>0,"Attribute: R/W
Default: 0
The value written to this register indicates the index for the last valid Buffer Descriptor in BDL. After the controller has processed this descriptor, it will wrap back to the first descriptor in the list and continue processing.
This field must be at least 1. that is, there must be at least 2 valid entries in the buffer descriptor list before DMA operations can begin.
This value should only modified when the RUN bit is 0.",
D27F0,Intel(R) High Definition Audio Controller,"EDS Spec 2.0, EDS Spec Update 1.0",BIOS Spec 1.6.1,0,27,0,memory,Memory Mapped Configuration Registers,12Ch SDLVI - Stream Descriptor Last Valid Index Register - Output Stream 1,[7:0]  Last Valid Index,ERROR,12c,0x0,>0,"Attribute: R/W
Default: 0
The value written to this register indicates the index for the last valid Buffer Descriptor in BDL. After the controller has processed this descriptor, it will wrap back to the first descriptor in the list and continue processing.
This field must be at least 1. that is, there must be at least 2 valid entries in the buffer descriptor list before DMA operations can begin.
This value should only modified when the RUN bit is 0.",
D27F0,Intel(R) High Definition Audio Controller,"EDS Spec 2.0, EDS Spec Update 1.0",BIOS Spec 1.6.1,0,27,0,memory,Memory Mapped Configuration Registers,14Ch SDLVI - Stream Descriptor Last Valid Index Register - Output Stream 2,[7:0]  Last Valid Index,ERROR,14c,0x0,>0,"Attribute: R/W
Default: 0
The value written to this register indicates the index for the last valid Buffer Descriptor in BDL. After the controller has processed this descriptor, it will wrap back to the first descriptor in the list and continue processing.
This field must be at least 1. that is, there must be at least 2 valid entries in the buffer descriptor list before DMA operations can begin.
This value should only modified when the RUN bit is 0.",
D27F0,Intel(R) High Definition Audio Controller,"EDS Spec 2.0, EDS Spec Update 1.0",BIOS Spec 1.6.1,0,27,0,memory,Memory Mapped Configuration Registers,16Ch SDLVI - Stream Descriptor Last Valid Index Register - Output Stream 3,[7:0]  Last Valid Index,ERROR,16c,0x0,>0,"Attribute: R/W
Default: 0
The value written to this register indicates the index for the last valid Buffer Descriptor in BDL. After the controller has processed this descriptor, it will wrap back to the first descriptor in the list and continue processing.
This field must be at least 1. that is, there must be at least 2 valid entries in the buffer descriptor list before DMA operations can begin.
This value should only modified when the RUN bit is 0.",
