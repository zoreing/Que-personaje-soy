//
//  PreguntaDosView.swift
//  Que personaje soy
//
//  Created by Jesus Rafael Valdes on 18/08/24.
//

import SwiftUI

struct PreguntaDosView: View {
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        VStack {
            NavigationView {
                List{
                Text("La eficiencia y la lógica para encontrar la mejor solución.")     //A
                Text("El coraje y la acción inmediata para resolver el problema.")      //B
                Text("La moralidad y el impacto positivo en los demás")                 //C
                Text("La estrategia a largo plazo y el éxito del grupo.s")              //D
                
            }
            .navigationTitle("¿Qué valoras más en una situación difícil?")
            .navigationBarTitleDisplayMode(.inline)
                }
            .padding()
        }
    }
    
}

struct PreguntaDosView_Previews: PreviewProvider {
    static var previews: some View {
        PreguntaDosView()
    }
}
