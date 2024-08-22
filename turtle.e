--EuTurtle
--Written by Andy P.
--Turtle Graphics Wrapper for OpenEuphoria
--Copyright (c) 2024
--64-Bits Euphoria

include std/ffi.e
include std/machine.e
include std/os.e

public atom turtle

ifdef WINDOWS then
	turtle = open_dll("turtle.dll")
	elsifdef LINUX or FREE BSD then
	turtle = open_dll("libturtle.so")
	elsifdef OSX then
	turtle = open_dll("libturtle.dylib")
end ifdef

if turtle = 0 then
	puts(1,"Failed to open library!\n")
	abort(0)
end if

public constant xturtle_init = define_c_proc(turtle,"+turtle_init",{C_INT,C_INT})

public procedure turtle_init(atom width,atom height)
	c_proc(xturtle_init,{width,height})
end procedure

public constant xturtle_reset = define_c_proc(turtle,"+turtle_reset",{})

public procedure turtle_reset()
	c_proc(xturtle_reset,{})
end procedure

public constant xturtle_backup = define_c_proc(turtle,"+turtle_backup",{})

public procedure turtle_backup()
	c_proc(xturtle_backup,{})
end procedure

public constant xturtle_restore = define_c_proc(turtle,"+turtle_restore",{})

public procedure turtle_restore()
	c_proc(xturtle_restore,{})
end procedure

public constant xturtle_forward = define_c_proc(turtle,"+turtle_forward",{C_INT})

public procedure turtle_forward(atom pixels)
	c_proc(xturtle_forward,{pixels})
end procedure

public constant xturtle_backward = define_c_proc(turtle,"+turtle_backward",{C_INT})

public procedure turtle_backward(atom pixels)
	c_proc(xturtle_backward,{pixels})
end procedure

public constant xturtle_turn_left = define_c_proc(turtle,"+turtle_turn_left",{C_DOUBLE})

public procedure turtle_turn_left(atom angle)
	c_proc(xturtle_turn_left,{angle})
end procedure

public constant xturtle_turn_right = define_c_proc(turtle,"+turtle_turn_right",{C_DOUBLE})

public procedure turtle_turn_right(atom angle)
	c_proc(xturtle_turn_right,{angle})
end procedure

public constant xturtle_pen_up = define_c_proc(turtle,"+turtle_pen_up",{})

public procedure turtle_pen_up()
	c_proc(xturtle_pen_up,{})
end procedure

public constant xturtle_pen_down = define_c_proc(turtle,"+turtle_pen_down",{})

public procedure turtle_pen_down()
	c_proc(xturtle_pen_down,{})
end procedure

public constant xturtle_begin_fill = define_c_proc(turtle,"+turtle_begin_fill",{})

public procedure turtle_begin_fill()
	c_proc(xturtle_begin_fill,{})
end procedure

public constant xturtle_end_fill = define_c_proc(turtle,"+turtle_end_fill",{})

public procedure turtle_end_fill()
	c_proc(xturtle_end_fill,{})
end procedure

public constant xturtle_goto = define_c_proc(turtle,"+turtle_goto",{C_INT,C_INT})

public procedure turtle_goto(atom x,atom y)
	c_proc(xturtle_goto,{x,y})
end procedure

public constant xturtle_goto_real = define_c_proc(turtle,"+turtle_goto_real",{C_DOUBLE,C_DOUBLE})

public procedure turtle_goto_real(atom x,atom y)
	c_proc(xturtle_goto_real,{x,y})
end procedure

public constant xturtle_set_heading = define_c_proc(turtle,"+turtle_set_heading",{C_DOUBLE})

public procedure turtle_set_heading(atom angle)
	c_proc(xturtle_set_heading,{angle})
end procedure

public constant xturtle_set_pen_color = define_c_proc(turtle,"+turtle_set_pen_color",{C_INT,C_INT,C_INT})

public procedure turtle_set_pen_color(atom red,atom green,atom blue)
	c_proc(xturtle_set_pen_color,{red,green,blue})
end procedure

public constant xturtle_dot = define_c_proc(turtle,"+turtle_dot",{})

public procedure turtle_dot()
	c_proc(xturtle_dot,{})
end procedure

public constant xturtle_draw_pixel = define_c_proc(turtle,"+turtle_draw_pixel",{C_INT,C_INT})

public procedure turtle_draw_pixel(atom x,atom y)
	c_proc(xturtle_draw_pixel,{x,y})
end procedure

public constant xturtle_fill_pixel = define_c_proc(turtle,"+turtle_fill_pixel",{C_INT,C_INT})

public procedure turtle_fill_pixel(atom x,atom y)
	c_proc(xturtle_fill_pixel,{x,y})
end procedure

public constant xturtle_draw_line = define_c_proc(turtle,"+turtle_draw_line",{C_INT,C_INT,C_INT,C_INT})

public procedure turtle_draw_line(atom x0,atom y0,atom x1,atom y1)
	c_proc(xturtle_draw_line,{x0,y0,x1,y1})
end procedure

public constant xturtle_draw_circle = define_c_proc(turtle,"+turtle_draw_circle",{C_INT,C_INT,C_INT})

public procedure turtle_draw_circle(atom x,atom y,atom radius)
	c_proc(xturtle_draw_circle,{x,y,radius})
end procedure

public constant xturtle_fill_circle = define_c_proc(turtle,"+turtle_fill_circle",{C_INT,C_INT,C_INT})

public procedure turtle_fill_circle(atom x0,atom y0,atom radius)
	c_proc(xturtle_fill_circle,{x0,y0,radius})
end procedure

public constant xturtle_draw_turtle = define_c_proc(turtle,"+turtle_draw_turtle",{})

public procedure turtle_draw_turtle()
	c_proc(xturtle_draw_turtle,{})
end procedure

public constant xturtle_save_bmp = define_c_proc(turtle,"+turtle_save_bmp",{C_STRING})

public procedure turtle_save_bmp(sequence fname)
	c_proc(xturtle_save_bmp,{fname})
end procedure

public constant xturtle_begin_video = define_c_proc(turtle,"+turtle_begin_video",{C_INT})

public procedure turtle_begin_video(atom pixels_per_frame)
	c_proc(xturtle_begin_video,{pixels_per_frame})
end procedure

public constant xturtle_save_frame = define_c_proc(turtle,"+turtle_save_frame",{})

public procedure turtle_save_frame()
	c_proc(xturtle_save_frame,{})
end procedure

public constant xturtle_end_video = define_c_proc(turtle,"+turtle_end_video",{})

public procedure turtle_end_video()
	c_proc(xturtle_end_video,{})
end procedure

public constant xturtle_get_x = define_c_func(turtle,"+turtle_get_x",{},C_DOUBLE)

public function turtle_get_x()
	return c_func(xturtle_get_x,{})
end function

public constant xturtle_get_y = define_c_func(turtle,"+turtle_get_y",{},C_DOUBLE)

public function turtle_get_y()
	return c_func(xturtle_get_y,{})
end function

public constant xturtle_draw_int = define_c_proc(turtle,"+turtle_draw_int",{C_INT})

public procedure turtle_draw_int(atom val)
	c_proc(xturtle_draw_int,{val})
end procedure

public constant xturtle_cleanup = define_c_proc(turtle,"+turtle_cleanup",{})

public procedure turtle_cleanup()
	c_proc(xturtle_cleanup,{})
end procedure
­209.27