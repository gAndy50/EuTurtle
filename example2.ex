include std/ffi.e
include turtle.e

turtle_init(300,300)

turtle_forward(100)
turtle_turn_left(120)
turtle_forward(100)
turtle_draw_turtle()

turtle_save_bmp("output2.bmp")
­11.24