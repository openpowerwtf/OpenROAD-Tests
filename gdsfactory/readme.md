# GDSFactory for Digital

1. create blackbox GDS/LEF with area/timing info for placement, routing, timing experiments
2. create bitstack macros using placed stdcells
3. create custom macros (array/add/etc.) at transistor level

## Try creating blackbox

1. create simple GDS from python
2. create LEF (manually or from GDS with magi)
3. include in higher-level verilog macro


### create sky130hd/wtf/

#### component

* 100x200, clk, a[0], d[0]

```
wtf_test
2022-10-08 07:47:53.243 | INFO     | gdsfactory.config:<module>:52 - Load '/home/wtf/.local/lib/python3.8/site-packages/gdsfactory' 5.15.0
2022-10-08 07:47:54.928 | INFO     | sky130:<module>:28 - load sky130 PDK '0.0.15' installed at '/home/wtf/.local/lib/python3.8/site-packages/sky130'
wtf_test: uid 0, ports ['clk', 'a[0]', 'do[0]'], aliases [], 3 polygons, 1 references
[Port (name clk, center [ 0. 10.], width 1.0, orientation 180, layer (1, 0), port_type optical), Port (name a[0], center [ 0. 12.], width 1.0, orientation 180, layer (1, 0), port_type optical), Port (name do[0], center [100.  10.], width 1.0, orientation 90, layer (1, 0), port_type optical)]
2022-10-08 07:47:54.938 | INFO     | gdsfactory.component:write_gds:1082 - Write GDS to 'wtf_test.gds'
```

* wtf.v top level plus config.mk, constraint.sdc, macro.cfg

```
ln -s ~/projects/openroad-designs/gdsfactory/sky130hd/wtf/ designs/sky130hd/wtf
```

* need lef; this is from openlane runs/run/cmd.log

```
Fri Oct 07 19:11:58 UTC 2022 - Executing "magic -noconsole -dnull -rcfile /home/wtf/projects/toy-sram-mpw7/dependencies/pdks/sky130B/libs.tech/magic/sky130B.magicrc < /openlane/scripts/magic/lef.tcl |& tee /dev/null /data/projects/a2p-mpw7/openlane/mul32s/runs/wtf/logs/signoff/22-lef.log"
```

* hacked it up a little; gens something!

```
cp /home/wtf/projects/toy-sram-mpw7/dependencies/pdks/sky130B/libs.tech/magic/sky130B.magicrc scripts
cp /home/wtf/projects/toy-sram-mpw7/dependencies/openlane_src/scripts/magic/lef.tcl scripts

export PDK_ROOT=/home/wtf/projects/toy-sram-mpw7/dependencies/pdks
magic -noconsole -dnull -rcfile scripts/sky130B.magicrc < scripts/lef.tcl |& tee /dev/null lef.log
```

* in openroads flow (ln -s from designs/sky130hd/wtf)

```
make clean_all DESIGN_CONFIG=designs/sky130hd/wtf/config.mk;make DESIGN_CONFIG=designs/sky130hd/wtf/config.mk

klayout results/sky130hd/wtf/base/6_final.gds

make gui_final DESIGN_CONFIG=designs/sky130hd/wtf/config.mk
```

* it has the top cells but no macro