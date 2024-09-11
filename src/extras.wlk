import pepita.*
import wollok.game.*

object nido {

	method position() = game.center()
	method image() = "nido.png"
}

object silvestre {

	method position() = game.at(pepita.position().x().max(3),0)
	method image() = "silvestre.png"

}

