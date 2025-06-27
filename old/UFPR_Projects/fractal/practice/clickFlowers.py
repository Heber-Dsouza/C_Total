import random
import turtle as t

while True:
  t.bgcolor('black')
  colors = ['red', 'yellow', 'blue', 'green', 'orange', 'purple', 'white', 'gray']

  def draw_flower(x, y):
    p = t.Pen()
    p.speed(0)
    p.hideturtle()
    p.penup()
    p.setpos(x, y)
    p.pendown()
    c1 = random.choice(colors)
    c2 = random.choice(colors)
    p.width(random.randint(1, 3))
    radius = random.randint(6, 24)

    p.pencolor(c1)
    for m in range(radius//2):
      p.circle(radius)
      p.left(360/radius*2)

    p.pencolor(c2)
    for m in range(radius//2):
      p.circle(radius/3)
      p.left(360/radius*2)


  t.onscreenclick(draw_flower)