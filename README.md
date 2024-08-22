# EuTurtle
Simple Turtle Wrapper for OpenEuphoria

EuTurtle is a simple wrapper of the turtle graphics library for the OpenEuphoria programming language. You can move the turtle in various directions and see the results via the output of a BMP image.

# LICENSE

Copyright (c) <2024> Andy P.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# EXAMPLE

```euphoria
include std/ffi.e
include turtle.e

turtle_init(300,300)

turtle_forward(100)
turtle_turn_left(120)
turtle_forward(100)
turtle_draw_turtle()

turtle_save_bmp("output2.bmp")
```
