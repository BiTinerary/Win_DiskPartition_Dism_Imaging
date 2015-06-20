# Win_DiskPartition_Dism_Imaging
Bulk Write Windows OS Image (and parts) to HDD

Dependancies: Windows OS

Hardcoded to be run from command line started from a bootable Win recovery iso. **Do not** run on native/main machine.
Disk 0 will be overwritten.

1: `RunMe.bat` >> Immediately executes `DiskPart` tool which uses `Diskpart.txt` as a reference for commands.<br>
2: `DiskPart.txt` >> Formats Disk 0 into all standard Windows OS partitions. Preps drive for imaging.<br>
3: `RunMe.bat` >> `Dism` command >> Writes `fake.wim`, within the same directory as RunMe script, to drive **C:\**
as assigned in `Diskpart.txt`
