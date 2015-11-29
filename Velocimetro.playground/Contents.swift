//: Playground - noun: a place where people can play

import UIKit



enum Velocidades: Int{
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial:Velocidades){
        
        self = velocidadInicial
        
    }
}


class Auto {
    
    var velocidad: Velocidades?
    
    
    init(velocidadInicial:Int){
        
        
    }
    
    func cambioDeVelocidad()-> (actual:Int, velocidadEnCadena: String){
        
        var velocidadEnCadena = ""
        
        switch(self.velocidad){
            
        case nil:
            self.velocidad = Velocidades.Apagado
            velocidadEnCadena = " Apagado"
            
        case  Velocidades.Apagado? :
            self.velocidad = Velocidades.VelocidadBaja
            velocidadEnCadena = " VelocidadBaja"
            
        case  Velocidades.VelocidadBaja? :
            self.velocidad = Velocidades.VelocidadMedia
            velocidadEnCadena = "VelocidadBajo"
            
        case  Velocidades.VelocidadMedia? :
            self.velocidad = Velocidades.VelocidadAlta
            velocidadEnCadena = "VelocidadMedio"
            
        case  Velocidades.VelocidadAlta? :
            self.velocidad = Velocidades.VelocidadMedia
            velocidadEnCadena = " VelocidadAlta"
            
            
            
            
            
        }
        return((self.velocidad?.rawValue)!,velocidadEnCadena)
    }
    
    
}


var auto = Auto.init(velocidadInicial: 0)

for var i = 0;i < 20;i++ {
    
    var car = auto.cambioDeVelocidad()
    
    print("\(i+1)." + " \(car.actual)," + car.velocidadEnCadena + "\n")
    
}







