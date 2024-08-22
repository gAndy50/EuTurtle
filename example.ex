include std/ffi.e
include turtle.e

turtle_init(300,300)

turtle_forward(50)
turtle_turn_left(90)
turtle_forward(50)
turtle_draw_turtle()

turtle_save_bmp("output.bmp")
­11.29