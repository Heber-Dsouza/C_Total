import turtle as t

colors = ['blue', 'red', 'green', 'yellow']
t.bgcolor('black')
t.speed(10)
# p = t.pen()
# for x in range(1, 100):
while True:
  for x in range(1, 100):
    t.color(colors[x%4])
    t.forward(x*2)
    t.left(90)
