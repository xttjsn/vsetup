VBoxManage.exe modifyvm "macOS Mojave" --cpuidset 00000001 000106e5 00100800 0098e3fd bfebfbff
VBoxManage.exe setextradata "macOS Mojave" "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "iMac11,3"
VBoxManage.exe setextradata "macOS Mojave" "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
VBoxManage.exe setextradata "macOS Mojave" "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Iloveapple"
VBoxManage.exe setextradata "macOS Mojave" "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
VBoxManage.exe setextradata "macOS Mojave" "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 1
