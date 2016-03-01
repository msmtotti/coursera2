//: Playground - noun: a place where people can play

import UIKit

var arregloNumeros = 0...100

for numero in arregloNumeros {
    
    var numero_5 : Double = Double(numero) % 5.0;
    if (numero_5 == 0.0) {
        print("El \(numero) es Bingo!!!")
    }
    
    var numero_2 : Double = Double(numero) % 2.0;
    if(numero_2 == 0.0){
        print("El \(numero) es par!!!")
    } else {
        print("El \(numero) es impar!!!")
    }
    
    if ( numero >= 30 ) && (numero <= 40 ){
        print("El \(numero) Viva Swift!!!!!!")
    }
}
