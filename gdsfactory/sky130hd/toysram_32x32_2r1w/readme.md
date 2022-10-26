# Build toysram logical array with dummy hard macro

* build hard macro with gdsDummy

```
gdsDummy toysram_bare_32x32_2r1w '(100,150)' 2
2022-10-26 08:40:45.550 | INFO     | gdsfactory.config:<module>:52 - Load '/home/wtf/.local/lib/python3.8/site-packages/gdsfactory' 5.15.0
2022-10-26 08:40:47.092 | INFO     | sky130:<module>:28 - load sky130 PDK '0.0.15' installed at '/home/wtf/.local/lib/python3.8/site-packages/sky130'
Building toysram_bare_32x32_2r1w with size=(100, 150), pinSpacing=2.0
Created toysram_bare_32x32_2r1w.v
2022-10-26 08:40:47.129 | INFO     | gdsfactory.component:write_gds:1082 - Write GDS to 'toysram_bare_32x32_2r1w.gds'
Created toysram_bare_32x32_2r1w.lef
Created toysram_bare_32x32_2r1w.sdc
```

* check it out

```
klayout toysram_bare_32x32_2r1w.gds
```


* in OpenROAD-flow-scripts/flow

```
ln -s <this dir> designs/sky130hd/toysram_32x32_2r1w

export DESIGN_CONFIG=designs/sky130hd/toysram_32x32_2r1w/config.mk
make clean_all;make
make gui_final
```

<image src='./toysram_32x32_2r1w.png'>

