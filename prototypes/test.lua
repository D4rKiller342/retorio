local asm2 = data.raw["assembling-machine"]["assembling-machine-2"]
log ( serpent.block (asm2) )
asm2.fluid_boxes[3] = table.deepcopy(asm2.fluid_boxes[2]) --copy existing output box
asm2.fluid_boxes[3].pipe_connections[1].position = {2, 0}
data:extend{asm2}