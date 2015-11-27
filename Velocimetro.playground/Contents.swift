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
    
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadea:String){
        
        let actual = velocidad.Apagado.rawValue
        let mensaje = " "
        
        let resultado = (actual, mensaje)
        
        return resultado
        
    }
    
    
}








//for (var cambios = 1; cambios <= 20; cambios++) {
// 
//   print("\(cambios)")
//    
//}







