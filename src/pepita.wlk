import extras.*
import wollok.game.*

object pepita {

	var property energia = 100
	var position = game.at(3,3)

	method position() = position

	method position(arg){
		self.irA(arg)
//		game.say(pepita,"cambio posicion: " + position.x() + " - " + position.y())
		game.say(pepita,"energia actual: " + energia)

	}
	method image() =
		"pepita" + self.parteDelNombreDelArchivoSegunUbicacion() + self.parteDelNombreDelArchivoSegunCansancio() + ".png"
//		"pepita" + (if (self.estaEnElNido()) "-grande" else "") + ".png"
//		if (self.estaEnElNido()) "pepita-grande.png" else "pepita.png"

  	method parteDelNombreDelArchivoSegunCansancio() = 
		if (self.estaCansada()) "-gris" else ""

	method parteDelNombreDelArchivoSegunUbicacion() = 
	    if (self.estaEnElNido()) "-grande" else ""

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method vola(kms) {
		energia = energia - kms * 9
	}

	method irA(nuevaPosicion) {
		if(not self.estaCansada()) {
			self.vola(position.distance(nuevaPosicion))
			position = nuevaPosicion
		}
	}

	method estaCansada() {
		return energia <= 0
	}

	method estaEnElNido() {
		
		return position == nido.position()
	}

}

