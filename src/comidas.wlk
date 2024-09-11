import wollok.game.*
import extras.*


object manzana {

	method energiaQueOtorga() = 40

	method position() = game.at(5,8)
	method image() = "manzana.png"

	method interactuar(algo){
		algo.come(self)
	}


}

object alpiste {

	method position() = nido.position().left(2)
	method image() = "alpiste.png" 

	method energiaQueOtorga() = 50

	method interactuar(algo){
		algo.come(self)
	}

}

