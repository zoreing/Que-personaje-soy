//
//  PreguntaCincoVIew.swift
//  Que personaje soy
//
//  Created by Jesus Rafael Valdes on 18/08/24.
//

import SwiftUI

struct PreguntaCincoVIew: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
       
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
        }
    }
}
struct PreguntaCincoVIew_Previews: PreviewProvider {
    static var previews: some View {
        PreguntaCincoVIew()
    }
}
