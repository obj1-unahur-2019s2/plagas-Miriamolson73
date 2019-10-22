import plagas.*

class Hogar{
	var property nivelDeMugre=0
	var property nivelDeConfort=0 
	method esBueno() {return true}
	method efectoAtaque(plaga){
		
		nivelDeMugre=+plaga.nivelDeDanio()
		
	}


}
class Huerta{
	var property capacidadDeProduccion=0
    var property nivelDeProduccion=0
	method esBueno(){return	capacidadDeProduccion >nivelDeProduccion}
	method efectoAtaque(plaga){
		
		if (plaga.trasmitenEnfermedades()){capacidadDeProduccion=capacidadDeProduccion- plaga.nivelDeDanio()*0.1-10}
		else {capacidadDeProduccion=capacidadDeProduccion-plaga.nivelDeDanio()*0.1}
		plaga.danioColateralAtaque()
	}
}
class Mascota{
	var property nivelDeSalud=0
	method esBueno(){ return nivelDeSalud >250 }
	method efectoAtaque(plaga){
		
		if(plaga.trasmitenEnfermedades()){nivelDeSalud=nivelDeSalud-plaga.nivelDeDanio()}
		plaga.danioColateralAtaque()
	}
	
}
