ThinkPad x200
====
`startup.sh` - put in rc.local




sensors meaning
---
* 1. CPU 1
* 2. miniPCI
* 3. HDD (for me but shows N / A)
* 4. GPU
* 5. BAT1
* 6. N / A
* 7. BAT2 (which for me also active when only BAT1 or BAT0 is available with different value than 5)
* 8. N / A
* 9. value available but not specified where to sit sensor
* 10. value available but not specified where to sit sensor

systool -m `module_name` -av #for list current module status

modinfo -p `module_name` #for list aval module options
