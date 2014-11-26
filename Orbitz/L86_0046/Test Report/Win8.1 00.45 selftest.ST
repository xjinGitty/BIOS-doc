Tool     : SelfTest, 6.2.8.19105
Filename : C:\Program Files (x86)\Intel\SelfTest\DC\windump.st
Date/Time: 7/2/2013 1:37:09 PM
Stats    : Total:17578 Error:124 Warn:37

*********************************************************************************
*********************************************************************************
Power Management Checklist
 BWG Version - NA
                                                    Actual               Expected

---------------------------------------------------------------------------------
B00 D14 F0 XHCI Controller

---------------------------------------------------------------------------------
50h Reserved
E     [23:20] Reserved                              0xC                  0xD                 

E     [19:16] Reserved                              0xE                  0xF                 

E     [9:8] Reserved                                0x2                  0x1                 

E     [7:5] Reserved                                0x2                  0x1                 

*********************************************************************************
Anti-Theft Technology
 BWG Version - Intel® Anti-Theft Technology 4.0 BWG Rev0.9
                                                    Actual               Expected
E     SMBios Type 131 Offset 18h[13] Intel® AT supp 0x0                  0x1                 

*********************************************************************************
Haswell System Agent BIOS Spec 0.7.1
 BWG Version - 
                                                    Actual               Expected

---------------------------------------------------------------------------------
B00 D00 F0

---------------------------------------------------------------------------------
7.2 High Definition Audio Controller Configuration
E     54h [5]                                       0x0                  0x1                 
D1F0 Disabled


---------------------------------------------------------------------------------
B00 D02 F0
E     GTTMMADR 45400h [31]                          0x0                  0x1                 
D1F0 Disabled

*********************************************************************************
Lynxpoint LP BIOS Spec 0.7
 BWG Version - 0.7
                                                    Actual               Expected

---------------------------------------------------------------------------------
B00 D14 F0 XHCI Controller

---------------------------------------------------------------------------------
44h XHCC2-xHC System Bus Configuration Register 2
E     [11] Reserved                                 0x0                  0x1                 
See BIOS Spec Section 22.13.2.1 xHCI Controller Setup
Attribute: R/WO
Default: 0


---------------------------------------------------------------------------------
B00 D1B F0 Audio Controller

---------------------------------------------------------------------------------
43h HDINIT1 - Intel® High Definition Audio Initialization Register 1
E     [6] Reserved                                  0x0                  0x1                 
See BIOS Spec Section 9.5 Additional High Definition Audio Programming Steps


---------------------------------------------------------------------------------
B00 D1C F0 PCI Express Controller

---------------------------------------------------------------------------------
68h DCTL2 - Device Control 2 Register
E     [14:13] Reserved                              0x0                  0x3                 
See BIOS Section Spec 22.8.14.1Power Optimizer Configuration
Default: 0


---------------------------------------------------------------------------------
E8h PECR1 - PCI Express* Configuration Register 1
E     [0] Reserved                                  0x0                  0x1                 
See BIOS Spec Section 19.10 Enabling Clock Gating

See BIOS Spec Section 19.10 Enabling Clock Gating
Default: 0


---------------------------------------------------------------------------------
B00 D1C F1 PCI Express Controller

---------------------------------------------------------------------------------
64h DCAP2 - Device Capabilities 2 Register
E     [19:18] Reserved                              0x0                  0x2                 
See BIOS Section Spec 22.8.14.1Power Optimizer Configuration
Default: 0


---------------------------------------------------------------------------------
68h DCTL2 - Device Control 2 Register
E     [14:13] Reserved                              0x0                  0x3                 
See BIOS Section Spec 22.8.14.1Power Optimizer Configuration
Default: 0


---------------------------------------------------------------------------------
E1h RPDCGEN - Root Port Dynamic Clock Gating Enable Register
E     [5:2]  Reserved                               0x0                  0xF                 
See BIOS Spec Section 19.10 Enabling Clock Gating

See BIOS Spec Section 19.10 Enabling Clock Gating
Attribute: R/W
Default: 0


---------------------------------------------------------------------------------
F4h Reserved
E     [7] Reserved                                  0x0                  0x1                 
See BIOS Spec Section 22.8.14Additional PCI Express* Programming Steps

Function 0 only
Attribute: R/W
Default: 0

E     [6:5] Reserved                                0x2                  0x0                 
See BIOS Spec Section 22.8.14Additional PCI Express* Programming Steps

Function 0 only
Attribute: R/W
Default: 0


---------------------------------------------------------------------------------
F5h Reserved
E     [3:0] Reserved                                0x0                  0x5                 
See BIOS Spec Section 22.19.4 Additional Power Management Programming

See BIOS Spec Section 22.19.4 Additional Power Management Programming
Attribute: R/W
Default: 0


---------------------------------------------------------------------------------
F7h Reserved
E     [3:2] Reserved                                0x3                  0x0                 
See BIOS Spec Section 22.8.14 Additional PCI Express* Programming Steps

Function 0, Function 4 and Function 5 only
Attribute: R/W
Default: 0


---------------------------------------------------------------------------------
B00 D1C F3 PCI Express Controller

---------------------------------------------------------------------------------
64h DCAP2 - Device Capabilities 2 Register
E     [19:18] Reserved                              0x0                  0x2                 
See BIOS Section Spec 22.8.14.1Power Optimizer Configuration
Default: 0


---------------------------------------------------------------------------------
68h DCTL2 - Device Control 2 Register
E     [14:13] Reserved                              0x0                  0x3                 
See BIOS Section Spec 22.8.14.1Power Optimizer Configuration
Default: 0


---------------------------------------------------------------------------------
E1h RPDCGEN - Root Port Dynamic Clock Gating Enable Register
E     [5:2]  Reserved                               0x0                  0xF                 
See BIOS Spec Section 19.10 Enabling Clock Gating

See BIOS Spec Section 19.10 Enabling Clock Gating
Attribute: R/W
Default: 0


---------------------------------------------------------------------------------
F4h Reserved
E     [7] Reserved                                  0x0                  0x1                 
See BIOS Spec Section 22.8.14Additional PCI Express* Programming Steps

Function 0 only
Attribute: R/W
Default: 0

E     [6:5] Reserved                                0x2                  0x0                 
See BIOS Spec Section 22.8.14Additional PCI Express* Programming Steps

Function 0 only
Attribute: R/W
Default: 0


---------------------------------------------------------------------------------
F5h Reserved
E     [3:0] Reserved                                0x0                  0x5                 
See BIOS Spec Section 22.19.4 Additional Power Management Programming

See BIOS Spec Section 22.19.4 Additional Power Management Programming
Attribute: R/W
Default: 0


---------------------------------------------------------------------------------
F7h Reserved
E     [3:2] Reserved                                0x3                  0x0                 
See BIOS Spec Section 22.8.14 Additional PCI Express* Programming Steps

Function 0, Function 4 and Function 5 only
Attribute: R/W
Default: 0


---------------------------------------------------------------------------------
B00 D1D F0 EHCI #1 Controller\Host Controller Capability Registers

---------------------------------------------------------------------------------
20h CMD - USB 2.0 Command Register
E     [1] Host Controller Reset (HCRESET)           0x0                  0x1                 
D26/D29 24h [12] is 1.  This value should be set to 1

See BIOS Spec 12.9 Additional Programming Requirements during USB Initialization

See BIOS Spec Section 12.10 Additional Programming Requirements During USB Initialization
Attribute: R/W
Default: 0
This control bit used by software to reset the host controller. The effects of this on root hub registers are similar to a Chip Hardware Reset (i.e., RSMRST# assertion and PWROK deassertion on the PCH). When software writes a 1 to this bit, the host controller resets its internal pipelines, timers, counters, state machines, etc. to their initial value. Any transaction currently in progress on USB is immediately terminated. A USB reset is not driven on downstream ports.

NOTE: PCI configuration registers and Host controller capability registers are not effected by this reset.

All operational registers, including port registers and port state machines are set to their initial values. Port ownership reverts to the companion host controller(s), with the side effects described in the EHCI spec. Software must re-initialize the host controller in order to return the host controller to an operational state.

This bit is set to 0 by the host controller when the reset process is complete. Software cannot terminate the reset process early by writing a 0 to this register.

Software should not set this bit to a 1 when the HCHalted bit (D29:F0,:CAPLENGTH + 24h, bit 12) in the USB2.0_STS register is a 0. Attempting to reset an actively running host controller will result in undefined behavior. This reset me be used to leave EHCI port test modes.


---------------------------------------------------------------------------------
B00 D1F F0 LPC Controller

---------------------------------------------------------------------------------
A0h GEN_PMCON_1 - General PM Configuration 1 Register
E     [2] PCI CLKRUN# Enable (CLKRUN_EN)            0x0                  0x1                 
See BIOS Spec Section 19.10 Enabling Clock Gating

mobile
Attribute: R/W
Default: 0
0 = Disable. PCH drives the CLKRUN# signal low.
1 = Enable CLKRUN# logic to control the system PCI clock using the CLKRUN# and STP_PCI# signals.

NOTES:
1. When the SLP_EN# bit is set, the PCH drives the CLKRUN# signal low regardless of the state of the CLKRUN_EN bit. This ensures that the PCI and LPC clocks continue running during a transition to a sleep state.
2. This bit should be set mutually exclusive with the PSEUDO_CLKRUN_EN bit. Setting CLKRUN_EN in a non-mobile SKU could result in unspecified behavior.


---------------------------------------------------------------------------------
DCh BIOS_CNTL - BIOS Control Register
E     [5] SMM BIOS write protect disable (SMM_BWP)  0x0                  0x1                 
See BIOS Spec Section 3.6 Flash Security Recommendation -- This recommendation is only for production BIOS
Attribute: R/WLO
Default: 1
This bit set defines when the BIOS region can be written by the host.
0 = BIOS region SMM protection is disabled. The BIOS Region is writable regardless if Processors are in SMM or not. (Set this field to 0 for legacy behavior)
1 = BIOS region SMM protection is enabled. The BIOS Region is not writable unless all Processors are in SMM.


---------------------------------------------------------------------------------
B00 D1F F0 LPC Controller\Memory Mapped IO

---------------------------------------------------------------------------------
1030h Reserved
E     [22] Configuration 1                          0x0                  0x1                 
See BIOS Spec 8.11 Subtractive Decode
Attribute: RW


---------------------------------------------------------------------------------
2B1Ch Reserved
E     [31:0] Reserved                               0x23808033           0x3000088           
See BIOS Spec Section 22.19.4 Additional Power Management Programming


---------------------------------------------------------------------------------
2B2Ch Reserved
E     [31:0] Reserved                               0x0                  0x8813              
See BIOS Spec Section 22.19.13 Power Optimizer Considerations

mobile


---------------------------------------------------------------------------------
2B34h Reserved
E     [31:0] Reserved                               0x80000009           0x80000008          
See BIOS Spec Section 22.19.4 Additional Power Management Programming

mobile


---------------------------------------------------------------------------------
B00 D1F F0 LPC Controller

---------------------------------------------------------------------------------
Memory Mapped IO
E     3314h CIR3314 - Chipset Initialization Regist 0x12FFF              0x00016FFF          
See BIOS Spec Section 22.19.4 Additional Power Management Programming
Attribute: R/W
Default: 0


---------------------------------------------------------------------------------
B00 D1F F0 LPC Controller\Memory Mapped IO

---------------------------------------------------------------------------------
333Ch CIR333C Chipset Initialization Register 333C
E     [23:20] Reserved                              0xC                  0x8                 
See BIOS Spec Section 22.19.10 Enabling Clock Gating
Attribute: RO
Default: 0


---------------------------------------------------------------------------------
3348h CIR3348 - Chipset Initialization Register 3348
E     [31:0] Reserved                               0x22DDFFF            0x020DDFFF          
See BIOS Spec Section 22.19.4 Additional Power Management Programming
Attribute: R/W
Default: 0


---------------------------------------------------------------------------------
3368h CIR3368 - Chipset Initialization Register 3368
E     [31:0] CIR14 Field 1                          0x41400              0x41000             
See BIOS Spec Section 22.19.4 Additional Power Management Programming
Attribute: R/W
Default: 0


---------------------------------------------------------------------------------
3388h CIR3388 - Chipset Initialization Register 3388
E     [31:0] CIR16 Field 1                          0x3F8DDBFF           0x00001000          
See BIOS Spec Section 22.19.4 Additional Power Management Programming
Attribute: R/W
Default: 0


---------------------------------------------------------------------------------
33ACh Reserved
E     [31:0] Reserved                               0x7001               0x1                 
See BIOS Spec Section 22.19.4 Additional Power Management Programming
Attribute: R/W
Default: 0


---------------------------------------------------------------------------------
33A8h CIR33A8 - Chipset Initialization Register 33A8
E     [31:0] CIR16 Field 1                          0x181900             0x800               
See BIOS Spec Section 22.19.4 Additional Power Management Programming
Attribute: R/W
Default: 0


---------------------------------------------------------------------------------
33B0h CIR33B0 - Chipset Initialization Register 33B0
E     [31:0] CIR23 Field 1                          0x181900             0x1000              
See BIOS Spec Section 22.19.4 Additional Power Management Programming
Attribute: R/W
Default: 0
BIOS must program this field to 00001000h.


---------------------------------------------------------------------------------
33C0h CIR33C0 - Chipset Initialization Register 33C0
E     [31:0] CIR19 Field 1                          0x60A00              0x11900             
See BIOS Spec Section 22.19.4 Additional Power Management Programming
Attribute: R/W
Default: 0
BIOS must program this field to 00093900h.


---------------------------------------------------------------------------------
33D4h CIR33D4 - Chipset Initialization Register 33D4
E     [19:16] CIR22 Field 1 Upper                   0xF                  0xB                 
See BIOS Spec Section 22.19.4 Additional Power Management Programming
Attribute: R/W
Default: 0


---------------------------------------------------------------------------------
33A8h CIR33A8 - Chipset Initialization Register 33A8
E     [31:0] CIR33A8 Field 1                        0x181900             0x800               
See BIOS Spec Section 22.19.4 Additional Power Management Programming
Attribute: R/W
Default: 0


---------------------------------------------------------------------------------
3400h RC - RTC Configuration Register
E     [4] Upper 128 Byte Lock (UL)                  0x0                  0x1                 
See BIOS Spec Section 5.13 BIOS Guide on Using RTC RAM
Attribute: R/WLO
Default: 0
0 = Bytes not locked.
1 = Bytes 38h-3Fh in the upper 128-byte bank of RTC RAM are locked and cannot be accessed. Writes will be dropped and reads will not return any ensured data. Bit reset on system reset.

E     [3] Lower 128 Byte Lock (LL)                  0x0                  0x1                 
See BIOS Spec Section 5.13 BIOS Guide on Using RTC RAM
Attribute: R/WLO
Default: 0
0 = Bytes not locked.
1 = Bytes 38h-3Fh in the lower 128-byte bank of RTC RAM are locked and cannot be accessed. Writes will be dropped and reads will not return any ensured data. Bit reset on system reset.


---------------------------------------------------------------------------------
B00 D1F F0 LPC Controller\PCIe and USB3.0 IOBP Indexed Registers

---------------------------------------------------------------------------------
E90021CCh Reserved
E     [31:0] Reserved                               0x4000               0x354000            
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-1
Attribute: RW
Default: 0


---------------------------------------------------------------------------------
E90023CCh Reserved
E     [31:0] Reserved                               0x4000               0x354000            
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-1
Attribute: RW
Default: 0


---------------------------------------------------------------------------------
E90025CCh Reserved
E     [31:0] Reserved                               0x4000               0x354000            
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-1
Attribute: RW
Default: 0


---------------------------------------------------------------------------------
E90027CCh Reserved
E     [31:0] Reserved                               0x4000               0x354000            
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-1
Attribute: RW
Default: 0


---------------------------------------------------------------------------------
E90029CCh Reserved
E     [31:0] Reserved                               0x4000               0x354000            
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-1
Attribute: RW
Default: 0


---------------------------------------------------------------------------------
E9002BCCh Reserved
E     [31:0] Reserved                               0x4000               0x354000            
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-1
Attribute: RW
Default: 0


---------------------------------------------------------------------------------
E90031CCh Reserved
E     [31:0] Reserved                               0x4004               0x355401            
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-5
Attribute: RW


---------------------------------------------------------------------------------
E90033CCh Reserved
E     [31:0] Reserved                               0x4004               0x355401            
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-5
Attribute: RW


---------------------------------------------------------------------------------
E90015CCh Reserved
E     [31:0] Reserved                               0x4004               0x355401            
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-5
Attribute: RW


---------------------------------------------------------------------------------
E90017CCh Reserved
E     [31:0] Reserved                               0x4004               0x355401            
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-5
Attribute: RW


---------------------------------------------------------------------------------
E9003164h Reserved
E     [31:0] Reserved                               0x4000               0x5000              
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-5
Attribute: RW


---------------------------------------------------------------------------------
E9003364h Reserved
E     [31:0] Reserved                               0x4000               0x5000              
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-5
Attribute: RW


---------------------------------------------------------------------------------
E9001564h Reserved
E     [31:0] Reserved                               0x4000               0x5000              
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-5
Attribute: RW


---------------------------------------------------------------------------------
E9001764h Reserved
E     [31:0] Reserved                               0x4000               0x5000              
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-5
Attribute: RW


---------------------------------------------------------------------------------
B00 D1F F0 LPC Controller\SATA IOBP Indexed Registers

---------------------------------------------------------------------------------
EA002488h Reserved
E     [31:0] Reserved                               0x9800               0x8000              
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-9
Attribute: RW


---------------------------------------------------------------------------------
EA002688h Reserved
E     [31:0] Reserved                               0x9800               0x8000              
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-9
Attribute: RW


---------------------------------------------------------------------------------
EA002494h Reserved
E     [31:0] Reserved                               0x0                  0x80000000          
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-9
Attribute: RW


---------------------------------------------------------------------------------
EA002694h Reserved
E     [31:0] Reserved                               0x0                  0x80000000          
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-9
Attribute: RW


---------------------------------------------------------------------------------
EA002540h Reserved
E     [31:0] Reserved                               0x140718             0x180918            
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-9
Attribute: RW


---------------------------------------------------------------------------------
EA002740h Reserved
E     [31:0] Reserved                               0x140718             0x180918            
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-9
Attribute: RW


---------------------------------------------------------------------------------
EA002544h Reserved
E     [31:0] Reserved                               0x998                0x0918              
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-9
Attribute: RW


---------------------------------------------------------------------------------
EA002744h Reserved
E     [31:0] Reserved                               0x998                0x0918              
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-9
Attribute: RW


---------------------------------------------------------------------------------
EA002548h Reserved
E     [31:0] Reserved                               0x998                0x0918              
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-9
Attribute: RW


---------------------------------------------------------------------------------
EA002748h Reserved
E     [31:0] Reserved                               0x998                0x0918              
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-9
Attribute: RW


---------------------------------------------------------------------------------
EA002550h Reserved
E     [31:0] Reserved                               0x0                  0x02000000          
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-9
Attribute: RW


---------------------------------------------------------------------------------
EA002750h Reserved
E     [31:0] Reserved                               0x0                  0x02000000          
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-9
Attribute: RW


---------------------------------------------------------------------------------
EA002554h Reserved
E     [31:0] Reserved                               0x0                  0x020000            
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-9
Attribute: RW


---------------------------------------------------------------------------------
EA002754h Reserved
E     [31:0] Reserved                               0x0                  0x020000            
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-9
Attribute: RW


---------------------------------------------------------------------------------
EA00257Ch Reserved
E     [31:0] Reserved                               0x2400               0x03F00             
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-9
Attribute: RW


---------------------------------------------------------------------------------
EA00277Ch Reserved
E     [31:0] Reserved                               0x2400               0x03F00             
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-9
Attribute: RW


---------------------------------------------------------------------------------
EA0025CCh Reserved
E     [31:0] Reserved                               0x4000               0x354000            
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-9
Attribute: RW


---------------------------------------------------------------------------------
EA0027CCh Reserved
E     [31:0] Reserved                               0x4000               0x354000            
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-9
Attribute: RW


---------------------------------------------------------------------------------
EA002088h Reserved
E     [31:0] Reserved                               0x9800               0x8000              
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-11
Attribute: RW


---------------------------------------------------------------------------------
EA002288h Reserved
E     [31:0] Reserved                               0x9800               0x8000              
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-11
Attribute: RW


---------------------------------------------------------------------------------
EA002094h Reserved
E     [31:0] Reserved                               0x0                  0x80000000          
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-11
Attribute: RW


---------------------------------------------------------------------------------
EA002294h Reserved
E     [31:0] Reserved                               0x0                  0x80000000          
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-11
Attribute: RW


---------------------------------------------------------------------------------
EA002140h Reserved
E     [31:0] Reserved                               0x140718             0x00180918          
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-11
Attribute: RW


---------------------------------------------------------------------------------
EA002340h Reserved
E     [31:0] Reserved                               0x140718             0x00180918          
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-11
Attribute: RW


---------------------------------------------------------------------------------
EA002150h Reserved
E     [31:0] Reserved                               0x9000000            0x2000000           
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-11
Attribute: RW


---------------------------------------------------------------------------------
EA002154h Reserved
E     [31:0] Reserved                               0x90000              0x20000             
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-11
Attribute: RW


---------------------------------------------------------------------------------
EA002350h Reserved
E     [31:0] Reserved                               0x0                  0x2000000           
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-11
Attribute: RW


---------------------------------------------------------------------------------
EA002354h Reserved
E     [31:0] Reserved                               0x0                  0x20000             
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-11
Attribute: RW


---------------------------------------------------------------------------------
EA00217Ch Reserved
E     [31:0] Reserved                               0x2400               0x03F00             
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-11
Attribute: RW


---------------------------------------------------------------------------------
EA00237Ch Reserved
E     [31:0] Reserved                               0x2400               0x03F00             
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-11
Attribute: RW


---------------------------------------------------------------------------------
EA0021CCh Reserved
E     [31:0] Reserved                               0x4000               0x354000            
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-11
Attribute: RW


---------------------------------------------------------------------------------
EA0023CCh Reserved
E     [31:0] Reserved                               0x4000               0x354000            
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps Table 7-11
Attribute: RW


---------------------------------------------------------------------------------
EA00208Ch Reserved
E     [31:0] Reserved                               0x640000             0x800000            
See BIOS Spec Section 7.1.5 Additional PCH DMI Programming Steps table 7-18

Mobile
Attribute: RW

*********************************************************************************
CPU 0
 BWG Version - Haswell Processor Family BIOS Writer’s Guide (BWG) 0.71
                                                    Actual               Expected

---------------------------------------------------------------------------------
610h PACKAGE_POWER_LIMIT
E     [16] CRITICAL_POWER_CLAMP_1                   0x1                  0x0                 
Attribute: R/W-L
Default: 0
When set, allows processor to go below the OS requested P States in order to maintain the power below Power_Limit_1 value specified below.
This bit is writable only when CPUID.(EAX=06h):EAX[4] is set.
BIOS must not set this bit.


---------------------------------------------------------------------------------
633h C_STATE_LATENCY_CONTROL_3
E     [9:0] Interrupt Response Time Limit           0xE4                 0x70                
Please refer to BWG section 17.2.5.2 for more information.
Attribute: R/W
Default: 0
Specifies the interrupt response time limit that should be used to decide if the package should be put into a Package C3 state.


---------------------------------------------------------------------------------
634h C_STATE_LATENCY_CONTROL_4
E     [9:0] Interrupt Response Time Limit           0x145                0x92                
Please refer to BWG section 17.2.5.2 for more information.
Attribute: R/W
Default: 0
Specifies the interrupt response time limit that should be used to decide if the package should be put into a Package C3 state.


---------------------------------------------------------------------------------
635h C_STATE_LATENCY_CONTROL_5
E     [12:10] Time Unit                             0x4                  0x2                 
Please refer to BWG section 17.2.5.2 for more information.
Attribute: R/W
Default: 0
This field indicates the unit of measurement for the Interrupt Response Time Limit specified in bits [9:0] of this MSR.
000b - 1ns
001b - 32 ns
010b - 1024 ns
011b - 32768 ns
100b - 1048576 ns
101b - 33554432 ns
110b - reserved
111b - reserved

E     [9:0] Interrupt Response Time Limit           0x3                  0x1BF               
Please refer to BWG section 17.2.5.2 for more information.
Attribute: R/W
Default: 0
Specifies the interrupt response time limit that should be used to decide if the package should be put into a Package C3 state.

*********************************************************************************
CPU 1
 BWG Version - Haswell Processor Family BIOS Writer’s Guide (BWG) 0.71
                                                    Actual               Expected

---------------------------------------------------------------------------------
610h PACKAGE_POWER_LIMIT
E     [16] CRITICAL_POWER_CLAMP_1                   0x1                  0x0                 
Attribute: R/W-L
Default: 0
When set, allows processor to go below the OS requested P States in order to maintain the power below Power_Limit_1 value specified below.
This bit is writable only when CPUID.(EAX=06h):EAX[4] is set.
BIOS must not set this bit.


---------------------------------------------------------------------------------
633h C_STATE_LATENCY_CONTROL_3
E     [9:0] Interrupt Response Time Limit           0xE4                 0x70                
Please refer to BWG section 17.2.5.2 for more information.
Attribute: R/W
Default: 0
Specifies the interrupt response time limit that should be used to decide if the package should be put into a Package C3 state.


---------------------------------------------------------------------------------
634h C_STATE_LATENCY_CONTROL_4
E     [9:0] Interrupt Response Time Limit           0x145                0x92                
Please refer to BWG section 17.2.5.2 for more information.
Attribute: R/W
Default: 0
Specifies the interrupt response time limit that should be used to decide if the package should be put into a Package C3 state.


---------------------------------------------------------------------------------
635h C_STATE_LATENCY_CONTROL_5
E     [12:10] Time Unit                             0x4                  0x2                 
Please refer to BWG section 17.2.5.2 for more information.
Attribute: R/W
Default: 0
This field indicates the unit of measurement for the Interrupt Response Time Limit specified in bits [9:0] of this MSR.
000b - 1ns
001b - 32 ns
010b - 1024 ns
011b - 32768 ns
100b - 1048576 ns
101b - 33554432 ns
110b - reserved
111b - reserved

E     [9:0] Interrupt Response Time Limit           0x3                  0x1BF               
Please refer to BWG section 17.2.5.2 for more information.
Attribute: R/W
Default: 0
Specifies the interrupt response time limit that should be used to decide if the package should be put into a Package C3 state.

*********************************************************************************
CPU 2
 BWG Version - Haswell Processor Family BIOS Writer’s Guide (BWG) 0.71
                                                    Actual               Expected

---------------------------------------------------------------------------------
610h PACKAGE_POWER_LIMIT
E     [16] CRITICAL_POWER_CLAMP_1                   0x1                  0x0                 
Attribute: R/W-L
Default: 0
When set, allows processor to go below the OS requested P States in order to maintain the power below Power_Limit_1 value specified below.
This bit is writable only when CPUID.(EAX=06h):EAX[4] is set.
BIOS must not set this bit.


---------------------------------------------------------------------------------
633h C_STATE_LATENCY_CONTROL_3
E     [9:0] Interrupt Response Time Limit           0xE4                 0x70                
Please refer to BWG section 17.2.5.2 for more information.
Attribute: R/W
Default: 0
Specifies the interrupt response time limit that should be used to decide if the package should be put into a Package C3 state.


---------------------------------------------------------------------------------
634h C_STATE_LATENCY_CONTROL_4
E     [9:0] Interrupt Response Time Limit           0x145                0x92                
Please refer to BWG section 17.2.5.2 for more information.
Attribute: R/W
Default: 0
Specifies the interrupt response time limit that should be used to decide if the package should be put into a Package C3 state.


---------------------------------------------------------------------------------
635h C_STATE_LATENCY_CONTROL_5
E     [12:10] Time Unit                             0x4                  0x2                 
Please refer to BWG section 17.2.5.2 for more information.
Attribute: R/W
Default: 0
This field indicates the unit of measurement for the Interrupt Response Time Limit specified in bits [9:0] of this MSR.
000b - 1ns
001b - 32 ns
010b - 1024 ns
011b - 32768 ns
100b - 1048576 ns
101b - 33554432 ns
110b - reserved
111b - reserved

E     [9:0] Interrupt Response Time Limit           0x3                  0x1BF               
Please refer to BWG section 17.2.5.2 for more information.
Attribute: R/W
Default: 0
Specifies the interrupt response time limit that should be used to decide if the package should be put into a Package C3 state.

*********************************************************************************
CPU 3
 BWG Version - Haswell Processor Family BIOS Writer’s Guide (BWG) 0.71
                                                    Actual               Expected

---------------------------------------------------------------------------------
610h PACKAGE_POWER_LIMIT
E     [16] CRITICAL_POWER_CLAMP_1                   0x1                  0x0                 
Attribute: R/W-L
Default: 0
When set, allows processor to go below the OS requested P States in order to maintain the power below Power_Limit_1 value specified below.
This bit is writable only when CPUID.(EAX=06h):EAX[4] is set.
BIOS must not set this bit.


---------------------------------------------------------------------------------
633h C_STATE_LATENCY_CONTROL_3
E     [9:0] Interrupt Response Time Limit           0xE4                 0x70                
Please refer to BWG section 17.2.5.2 for more information.
Attribute: R/W
Default: 0
Specifies the interrupt response time limit that should be used to decide if the package should be put into a Package C3 state.


---------------------------------------------------------------------------------
634h C_STATE_LATENCY_CONTROL_4
E     [9:0] Interrupt Response Time Limit           0x145                0x92                
Please refer to BWG section 17.2.5.2 for more information.
Attribute: R/W
Default: 0
Specifies the interrupt response time limit that should be used to decide if the package should be put into a Package C3 state.


---------------------------------------------------------------------------------
635h C_STATE_LATENCY_CONTROL_5
E     [12:10] Time Unit                             0x4                  0x2                 
Please refer to BWG section 17.2.5.2 for more information.
Attribute: R/W
Default: 0
This field indicates the unit of measurement for the Interrupt Response Time Limit specified in bits [9:0] of this MSR.
000b - 1ns
001b - 32 ns
010b - 1024 ns
011b - 32768 ns
100b - 1048576 ns
101b - 33554432 ns
110b - reserved
111b - reserved

E     [9:0] Interrupt Response Time Limit           0x3                  0x1BF               
Please refer to BWG section 17.2.5.2 for more information.
Attribute: R/W
Default: 0
Specifies the interrupt response time limit that should be used to decide if the package should be put into a Package C3 state.

*********************************************************************************
Integrated Graphics Device
 EDS Spec Version - Haswell Mobile ULT 0.9v2
 Bios Spec Version - 
 Bus: 0, Dev: 2, Func: 0
                                                    Actual               Expected

---------------------------------------------------------------------------------
02h DID - Device Identification
E     [15:4] DID_MSB                                0xA1                 A0, A2              
Attribute: RO
Default: 40
This is the upper part of a 16 bit value assigned to the Graphics device. Reset value is written to 0x0A0 on CRW by pcode fuse distribution. Bits 5 and 4 are updated based on the GFX level by pcode.

*********************************************************************************
Intel(R) High Definition Audio Controller
 EDS Spec Version - EDS Spec 1.0
 Bios Spec Version - 0.7
 Bus: 0, Dev: 27, Func: 0
                                                    Actual               Expected

---------------------------------------------------------------------------------
52h  PC - Power Management Capabilities Register
E     [2:0] Version                                 0x3                  0x2                 
Attribute: RO
Default: 2
Hardwired to 010b. Indicates support for version 1.1 of the PCI Power Management Specification.


---------------------------------------------------------------------------------
Memory Mapped Configuration Registers

---------------------------------------------------------------------------------
8Ch SDLVI - Stream Descriptor Last Valid Index Register - Input Stream 0
E     [7:0]  Last Valid Index                       0x0                  >0                  
Attribute: RW
Default: 0
The value written to this register indicates the index for the
last valid Buffer Descriptor in BDL. After the controller has processed this descriptor, it
will wrap back to the first descriptor in the list and continue processing.
This field must be at least 1  that is, there must be at least 2 valid entries in the buffer
descriptor list before DMA operations can begin.
This value should only modified when the RUN bit is 0.


---------------------------------------------------------------------------------
ACh SDLVI - Stream Descriptor Last Valid Index Register - Input Stream 1
E     [7:0]  Last Valid Index                       0x0                  >0                  
Attribute: R/W
Default: 0
The value written to this register indicates the index for the last valid Buffer Descriptor in BDL. After the controller has processed this descriptor, it will wrap back to the first descriptor in the list and continue processing.
This field must be at least 1. that is, there must be at least 2 valid entries in the buffer descriptor list before DMA operations can begin.
This value should only modified when the RUN bit is 0.


---------------------------------------------------------------------------------
CCh SDLVI - Stream Descriptor Last Valid Index Register - Input Stream 2
E     [7:0]  Last Valid Index                       0x0                  >0                  
Attribute: R/W
Default: 0
The value written to this register indicates the index for the last valid Buffer Descriptor in BDL. After the controller has processed this descriptor, it will wrap back to the first descriptor in the list and continue processing.
This field must be at least 1. that is, there must be at least 2 valid entries in the buffer descriptor list before DMA operations can begin.
This value should only modified when the RUN bit is 0.


---------------------------------------------------------------------------------
ECh SDLVI - Stream Descriptor Last Valid Index Register - Input Stream 3
E     [7:0]  Last Valid Index                       0x0                  >0                  
Attribute: R/W
Default: 0
The value written to this register indicates the index for the last valid Buffer Descriptor in BDL. After the controller has processed this descriptor, it will wrap back to the first descriptor in the list and continue processing.
This field must be at least 1. that is, there must be at least 2 valid entries in the buffer descriptor list before DMA operations can begin.
This value should only modified when the RUN bit is 0.


---------------------------------------------------------------------------------
10Ch SDLVI - Stream Descriptor Last Valid Index Register - Output Stream 0
E     [7:0]  Last Valid Index                       0x0                  >0                  
Attribute: R/W
Default: 0
The value written to this register indicates the index for the last valid Buffer Descriptor in BDL. After the controller has processed this descriptor, it will wrap back to the first descriptor in the list and continue processing.
This field must be at least 1. that is, there must be at least 2 valid entries in the buffer descriptor list before DMA operations can begin.
This value should only modified when the RUN bit is 0.


---------------------------------------------------------------------------------
12Ch SDLVI - Stream Descriptor Last Valid Index Register - Output Stream 1
E     [7:0]  Last Valid Index                       0x0                  >0                  
Attribute: R/W
Default: 0
The value written to this register indicates the index for the last valid Buffer Descriptor in BDL. After the controller has processed this descriptor, it will wrap back to the first descriptor in the list and continue processing.
This field must be at least 1. that is, there must be at least 2 valid entries in the buffer descriptor list before DMA operations can begin.
This value should only modified when the RUN bit is 0.


---------------------------------------------------------------------------------
14Ch SDLVI - Stream Descriptor Last Valid Index Register - Output Stream 2
E     [7:0]  Last Valid Index                       0x0                  >0                  
Attribute: R/W
Default: 0
The value written to this register indicates the index for the last valid Buffer Descriptor in BDL. After the controller has processed this descriptor, it will wrap back to the first descriptor in the list and continue processing.
This field must be at least 1. that is, there must be at least 2 valid entries in the buffer descriptor list before DMA operations can begin.
This value should only modified when the RUN bit is 0.


---------------------------------------------------------------------------------
16Ch SDLVI - Stream Descriptor Last Valid Index Register - Output Stream 3
E     [7:0]  Last Valid Index                       0x0                  >0                  
Attribute: R/W
Default: 0
The value written to this register indicates the index for the last valid Buffer Descriptor in BDL. After the controller has processed this descriptor, it will wrap back to the first descriptor in the list and continue processing.
This field must be at least 1. that is, there must be at least 2 valid entries in the buffer descriptor list before DMA operations can begin.
This value should only modified when the RUN bit is 0.

*********************************************************************************
LPC Interface Bridge
 EDS Spec Version - EDS Spec 1.0
 Bios Spec Version - 0.7
 Bus: 0, Dev: 31, Func: 0
                                                    Actual               Expected

---------------------------------------------------------------------------------
Chipset Configuration Registers

---------------------------------------------------------------------------------
3388h CIR3388 - Chipset Initialization Register 3388
E     [31:0] CIR3388 Field 1                        0x3F8DDBFF           0x1000              
See EDS Spec Section 8.1.73
Attribute: R/W
Default: 0
BIOS must program this field to 00001000h.


---------------------------------------------------------------------------------
33B0h CIR33B0 - Chipset Initialization Register 33B0
E     [31:0] CIR33B0 Field 1                        0x181900             0x1000              
See EDS Spec Section 8.1.76
Attribute: R/W
Default: 0
BIOS must program this field to 00001000h.

