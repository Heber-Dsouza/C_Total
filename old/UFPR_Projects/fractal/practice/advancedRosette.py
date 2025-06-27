import turtle as t

t.bgcolor('black')
t.speed(10)
t.width(3)

num_of_circles = int(t.numinput("Numero de circulos", "Quantos circulos na tela?"))
while True:
  for x in range(num_of_circles):
    t.color('red')
    t.circle(100)
    t.color('yellow')
    t.circle(50)
    t.left(360/num_of_circles)