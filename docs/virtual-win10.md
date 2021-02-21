Windows10 in Virtualbox
---

## Specs

### General

* Operating System: Windows 10 (64-bit)

### System

* Base Memory: 4GB
* Boot Order: Hard Disk, Optical
* Acceleration: VT-x/AMD-V, Nested Paging, Hyper-V Paravirtualization

### Display

* Video Memory: 128MB
* Graphics Controller: VBoxSVGA
* Remote Desktop Server, Recording: Disabled

### Storage

* Controller: SATA
  * SATA Port0: Windows 10.vdi(Normal, 50.00 GB)
  * SATA Port1: [Optical Drive] Win10_20H2_v2_Korean_x64.iso (5.44 GB)

## Caution

다음 설정을 반드시 확인할 것

1. System Preferences - Security & Privacy - Allow apps downloaded from:...
2. Boot order: Hard Disk, Optical
