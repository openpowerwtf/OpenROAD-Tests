set design $::env(DESIGN)
set out_dir [pwd]
puts "\n\ndesign:$design  out_dir:$out_dir\n"

drc off
gds readonly true
gds rescale false

gds read $design.gds

# if i dont do this i get (UNNAMED) cell from gdsfactory
load $design
puts "\[INFO\]: Writing abstract LEF"
lef write $design.lef -hide
