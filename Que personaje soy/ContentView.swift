//
//  ContentView.swift
//  Que personaje soy
//
//  Created by Jesus Rafael Valdes on 17/08/24.
//

import SwiftUI

struct ContentView: View {
  //  @Binding var preguntaUno: Int
    var body: some View {
        
        VStack {
            NavigationView {
                List{
                Text("Hombre")
                Text("Mujer")
                Text("Ninguno de los anteriores")
                    
            }
            .navigationTitle("Cual es tu sexo")
            .navigationBarTitleDisplayMode(.inline)
                }
        //Text("Hello, world!")
            .padding()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/*
        VStack {
            NavigationView {
                List{
                Text("La eficiencia y la lógica para encontrar la mejor solución.")
                Text("El coraje y la acción inmediata para resolver el problema.")
                Text("La moralidad y el impacto positivo en los demás")
                Text("La estrategia a largo plazo y el éxito del grupo.s")
                
            }
            .navigationTitle("¿Qué valoras más en una situación difícil?")
            .navigationBarTitleDisplayMode(.inline)
                }
            .padding()
        }


        VStack {
            NavigationView {
                List{
                Text("Reflexionando y meditando antes de actuar.")          \\a
                Text("Enfrentándolo de manera directa y sin rodeos.")       \\b
                Text("Buscando una solución pacífica y diplomática.")       \\c
                Text("Liderando y guiando a los demás hacia la solución.")  \\d
                
            }
            .navigationTitle("¿Cómo prefieres abordar un conflicto?")
            .navigationBarTitleDisplayMode(.inline)
                }
            .padding()
        }


        VStack {
            NavigationView {
                List{
                Text("El de sabio consejero, ofreciendo guía desde la experiencia.")        \\A
                Text("El de héroe valiente, tomando riesgos para el éxito del equipo.")     \\B
                Text("El de protector, asegurándote de que todos estén bien y seguros.")    \\C
                Text("El de líder, tomando decisiones estratégicas para el bien común.")    \\D
                
            }
            .navigationTitle("¿Qué rol prefieres asumir en un equipo?")
            .navigationBarTitleDisplayMode(.inline)
                }
            .padding()
        }

        VStack {
            NavigationView {
                List{
                Text("Sabio y espiritual, con una profunda conexión con el universo.")          \\A
                Text("Aventurero y audaz, con un enfoque pragmático en la vida.")               \\B
                Text("Compasivo y justo, siempre buscando lo mejor para los demás.")            \\C
                Text("Fuerte y decidido, con un enfoque en el liderazgo y la justicia.")        \\D
                
            }
            .navigationTitle("¿Cómo te describirían mejor?")
            .navigationBarTitleDisplayMode(.inline)
                }
            .padding()

*/