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
        var valor : Int;
        var texto : String;
        switch velocidad{
            
        case .Apagado:
            valor = velocidad.rawValue
            texto = "Apagado"
            velocidad = .VelocidadBaja
            
        case .VelocidadBaja:
            valor = velocidad.rawValue
            texto = "Velocidad baja"
            velocidad = .VelocidadMedia
            
        case .VelocidadMedia:
            valor = velocidad.rawValue
            texto = "Velocidad media"
            velocidad = .VelocidadAlta
            
        case .VelocidadAlta:
            valor = velocidad.rawValue
            texto = "Velocidad alta"
            velocidad = .VelocidadMedia
            
        }
        return (valor,texto)
    }
}

var velocimetro = Auto()

for cambios in 1...20{
    let regreso = velocimetro.cambioDeVelocidad()
    print("\(cambios). \(regreso.actual), \(regreso.velocidadEnCadena)")
    
}


