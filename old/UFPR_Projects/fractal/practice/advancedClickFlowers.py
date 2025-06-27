import random
import turtle as _t
import colorsys

while True:
  _t.bgcolor('black')

  def draw_flower(x,y):
    t = _t.Pen()
    t.speed(0)
    t.hideturtle()
    t.penup()
    t.setpos(x,y)
    t.pendown()
    color1 = colorsys.hsv_to_rgb(random.random(), 1, 1)
    color2 = colorsys.hsv_to_rgb(random.random(), 1, 1)
    t.width(random.randint(1,4))
    radius = random.randint(10,30)
    t.pencolor(color1)
    for m in range(radius//3):
      t.circle(radius)
      t.left(360/radius*3)
    t.pencolor(color2)
    for m in range(radius//2):
      t.circle(radius/3)
      t.left(360/radius*2)

  _t.onscreenclick(draw_flower)