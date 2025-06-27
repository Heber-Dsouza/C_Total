import turtle as t
import math as m

t.bgcolor('black')
t.speed(0)
t.hideturtle()

colors = ['red', 'orange', 'yellow', 'green', 'blue', 'purple']
raio = 5
iteracoes = int(t.numinput("Numero de iteracoes", "Quantas iterações serão feitas?"))
#iteracoes = 5

num_of_circles = int(t.numinput("Numero de circulos", "Quantos circulos por iteração?"))
#num_of_circles = 6
while iteracoes > 0:
	t.left(0)
	t.up()
	t.setpos(0,-raio)
	t.down()
	t.color('white')
	t.circle(raio)

	for x in range(num_of_circles):
		t.up()
		t.begin_fill()
		t.color(colors[(iteracoes-1)%6])
		t.fillcolor(colors[(iteracoes-1)%6])

		posx = m.cos(m.radians((360/num_of_circles)*(x+1)))*raio
		posy = m.sin(m.radians((360/num_of_circles)*(x+1)))*raio
		t.setpos(posx, posy);	
		
		t.down()
		t.circle(raio)
		t.end_fill()
		t.left(360/(num_of_circles))



	raio = 3*raio 
	iteracoes = iteracoes -1




t.done()
