//
//  ContentView.swift
//  Que personaje soy
//
//  Created by Jesus Rafael Valdes on 17/08/24.
//

import SwiftUI

struct ContentView: View {
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
