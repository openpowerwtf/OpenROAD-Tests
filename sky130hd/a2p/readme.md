# A2P with macros

# Setup

* link to this directory from OpenROAD-flow-scripts

```
ln -sf ~/projects/OpenROAD-Tests/sky130hd/a2p designs/sky130hd/a2p
```

* set up PDK, etc. env
```
setup_openlane # alias to set PDK_ROOT, etc.
```

## Flow

* in OpenROAD-flow-scripts shell

```
export DESIGN_CONFIG=designs/sky130hd/a2p/config.mk
make clean_all; make
make gui_final
```

<image src="./gui_final.png">