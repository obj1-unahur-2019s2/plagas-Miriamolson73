import elementos.*

class Plagas{
		var property poblacion=0
		var pesoPromedio=0 
	//	method nivelDeDanio()
		method trasmitenEnfermedades(){return  poblacion>10}
		method ataqueElemento(elemento){
			elemento.efectoAtaque(self)
			self.danioColateralAtaque()
		}
	    method danioColateralAtaque(){poblacion=poblacion+poblacion*0.1}
	
}
class Cucarachas inherits Plagas{
	
	method nivelDeDanio(){return poblacion/2}
	override method trasmitenEnfermedades(){return super() and pesoPromedio>=10}
	override method danioColateralAtaque(){super()  (pesoPromedio=pesoPromedio+2)}
	
}
class Mosquitos inherits Plagas{
	method nivelDeDanio(){return poblacion}
	override method trasmitenEnfermedades(){return super() and poblacion % 3 == 0}
	 
	 
	 }
class Pulgas inherits Plagas{
	method nivelDeDanio(){return poblacion*2} 
}


class Garrapatas inherits Plagas{
	 method nivelDeDanio(){return poblacion*2} 
	 override method danioColateralAtaque(){poblacion=poblacion+poblacion*0.2}
	} 


