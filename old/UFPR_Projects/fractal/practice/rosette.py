import turtle as t

colors = ['red', 'purple', 'blue', 'green', 'yellow', 'orange']
t.bgcolor('black')
t.speed(10)
# p = t.pen()
# for x in range(1, 100):
while True:
  for x in range(6):
    t.color(colors[x%6])
    t.circle(100)
    t.left(60)
