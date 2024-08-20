//
//  Que_personaje_soyApp.swift
//  Que personaje soy
//
//  Created by Jesus Rafael Valdes on 17/08/24.
//

import SwiftUI

@main
struct Que_personaje_soyApp: App {
    // var PreguntaUno:[Int:String](); let PreguntaUno[1] = "Hombre"); let PreguntaUno[2] = "Mujer; let PreguntaUno[3] = ninguno;
    var preguntaUnoCount = 0
    var respuestaACount = 0
    var respuestaBCount = 0
    var respuestaCCount = 0
    var respuestaDCount = 0

    func counts(contador :[Int]){
        preguntaUnoCount = contador[0];


    }

    func name() {
        
    }
    var body: some Scene {

        
        WindowGroup {
            ContentView()
            
        }
    }
}
