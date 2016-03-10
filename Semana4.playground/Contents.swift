//: Velocimetro de un auto usando enum y class

import UIKit

enum Velocidades : Int{
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String) {
        let velocidadActual : Int = velocidad.rawValue;
        var velocidadCadena : String;
        switch velocidad{
            
        case .Apagado:
            velocidadCadena = "Apagado"
            velocidad = .VelocidadBaja
            
        case .VelocidadBaja:
            velocidadCadena = "Velocidad baja"
            velocidad = .VelocidadMedia
            
        case .VelocidadMedia:
            velocidadCadena = "Velocidad media"
            velocidad = .VelocidadAlta
            
        case .VelocidadAlta:
            velocidadCadena = "Velocidad alta"
            velocidad = .VelocidadMedia
            
        }
        return (velocidadActual, velocidadCadena)
    }
}

var velocimetro = Auto()

for cambios in 1...20{
    let regreso = velocimetro.cambioDeVelocidad()
    print("\(cambios). \(regreso.actual), \(regreso.velocidadEnCadena)")
    
}


