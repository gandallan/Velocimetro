//: Playground - noun: a place where people can play

import UIKit



//----------------------
//Enum Velocidades
//----------------------
enum Velocidades: Int{
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial:Velocidades){
        
        self = velocidadInicial
    
    }
}


//----------------------
//Clase Auto
//----------------------
class Auto {

    var velocidad = Velocidades.self
    
    init(velocidadInicial:Velocidades){
        
        self.velocidad.init(velocidadInicial:Velocidades.Apagado)
        
    }
    
    
//    
//    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadea:String){
//        
//        let actual = velocidad.Apagado.rawValue
//        let mensaje = " "
//        
//        let resultado = (actual, mensaje)
//        
//        return resultado
//        
//    }
    
    
}

var actual:Int = 0
var velocidadEnCadena = ""


func cambioDeVelocidades()-> (actual:Int, velocidadEnCadena:String){
   

    actual++
    
    
    switch(actual){
    
    case 2:
        
        actual = 2
    
    case 2...19:
        
        actual = 19
        
    case 20:
        
        velocidadEnCadena = " Velocidad Baja "
        actual = 20
        
    case 21...49:
        
        actual = 49
        
    case 50:
        
        velocidadEnCadena = "velocidad Media"
        actual = 50
        
    case 51...119:
        
        actual = 119
        
    case 120:
        
        velocidadEnCadena = "velocidad Alta"
    
    case 121...155:
        
        actual = 49
        
        
    default:
        
        velocidadEnCadena = " "

        }

    
    return (actual, velocidadEnCadena)
        
}




for (var cambios = 1; cambios <= 20; cambios++) {
    
    cambioDeVelocidades()
    
    print("\(cambios)" + " " + "\(cambioDeVelocidades())")

}







