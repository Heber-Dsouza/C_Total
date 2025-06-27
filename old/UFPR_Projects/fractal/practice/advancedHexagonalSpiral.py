import turtle as t

colors = ['red', 'purple', 'blue', 'green', 'yellow', 'orange']
t.bgcolor('black')
t.speed(10)
# p = t.pen()
# for x in range(1, 100):
for x in range(360):
  t.color(colors[x%6])
  t.width(x//100+1)
  t.forward(x)
  t.left(59)
