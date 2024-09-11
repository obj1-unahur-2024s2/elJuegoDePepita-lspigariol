import pepita.*
import wollok.game.*

object nido {

	method position() = game.center()
	method image() = "nido.png"
	method energiaQueOtorga() = 0

	method interactuar(algo){
		game.say(nido,"Llegaste!! - GANASTE")
	}

}

object silvestre {

	method position() = game.at(pepita.position().x().max(3),0)
	method image() = "silvestre.png"
	method interactuar(algo){
		pepita.energia(0)
		game.say(silvestre,"Te atrape!! - GAME OVER")
	}
}

