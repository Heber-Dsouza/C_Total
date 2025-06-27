import turtle as t
import math as m

t.bgcolor('black')
t.speed(0)
t.hideturtle()

colors = ['red', 'orange', 'yellow', 'green', 'blue', 'purple']
raio = 2
iteracoes = int(t.numinput("Numero de iteracoes", "Quantas iterações serão feitas?"))
#iteracoes = 3

num_of_circles = int(t.numinput("Numero de circulos", "Quantos circulos por iteração?"))
#num_of_circles = 4
while iteracoes > 0:
	t.left(0)
	t.color('white')
	t.up()
	t.setpos(0,-raio)
	t.down()
	t.circle(raio)

	for x in range(num_of_circles):
		t.up()
		t.begin_fill()
		t.color(colors[(iteracoes-1)%6])
		t.fillcolor(colors[(iteracoes-1)%6])

		posx = m.cos(m.radians((360/num_of_circles)*(x+1)))*raio
		posy = m.sin(m.radians((360/num_of_circles)*(x+1)))*raio
		posx = round(posx, 2);
		posy = round(posy, 2);
		t.setpos(posx, posy);	
		
		t.down()
		t.circle(raio)
		t.end_fill()
		
		t.up()
		posx = posx + (m.cos(m.radians((360/num_of_circles)*(x+1)))*raio)
		posy = posy + (m.sin(m.radians((360/num_of_circles)*(x+1)))*raio)
		posx = round(posx, 2);
		posy = round(posy, 2);
		t.setpos(posx, posy)
		
		t.left(0)
		for y in range(num_of_circles):
			t.color("white")
			t.down()
			t.circle(raio/2)
			t.left(-360/(num_of_circles))

		t.left(360/(num_of_circles))



	raio = 3*raio 
	iteracoes = iteracoes -1




t.done()
