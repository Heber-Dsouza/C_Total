import turtle as t

colors = ['blue', 'red', 'green', 'yellow', 'pink', 'orange']
t.bgcolor('black')
t.speed(10)
# p = t.pen()
# for x in range(1, 100):
for x in range(1, 100):
  t.color(colors[x%6])
  t.forward(x*2)
  t.left(61)
