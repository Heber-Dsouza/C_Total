import turtle as t

colors = ['red', 'purple', 'blue', 'green', 'yellow', 'orange']
t.bgcolor('black')
t.speed(10)
sides = 4
for x in range(360):
  t.color(colors[x%sides])
  t.width(x*sides//200)
  t.forward(x*3/sides + x)
  t.left(360//sides + 1)
