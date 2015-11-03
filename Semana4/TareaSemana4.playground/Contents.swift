//: Playground - noun: a place where people can play

import UIKit

// velocidades

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades ) {
        self = velocidadInicial
    }
}

// se crea la clase auto
class Auto {
    
    var velocidad : Velocidades
    
    init() {
        velocidad = Velocidades.init(velocidadInicial : Velocidades.Apagado)
    }
    
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena : String ){
        var actual : Int
        var velocidadEnCadena : String
        
        actual = velocidad.rawValue
        
        switch velocidad {
        case .Apagado : velocidad = Velocidades.VelocidadBaja
            velocidadEnCadena = "Apagado"
        case .VelocidadBaja : velocidad = Velocidades.VelocidadMedia
            velocidadEnCadena = "Velocidad Baja"
        case .VelocidadMedia : velocidad = Velocidades.VelocidadAlta
            velocidadEnCadena = "Velocidad Media"
        case .VelocidadAlta : velocidad = Velocidades.Apagado
            velocidadEnCadena = "Velocidad Alta"
        }
        
        return (actual, velocidadEnCadena)
    }
    
    

}

var miAuto = Auto() // Auto

print("Prueba de cambioDeVelocidad")
for var n = 1; n <= 20; n++ {
    var tupla = miAuto.cambioDeVelocidad()
    print("\(n).\t\(tupla.actual), \(tupla.velocidadEnCadena)")
}


