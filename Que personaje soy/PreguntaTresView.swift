//
//  PreguntaTresView.swift
//  Que personaje soy
//
//  Created by Jesus Rafael Valdes on 18/08/24.
//

import SwiftUI

struct PreguntaTresView: View {
    var body: some View {

        VStack {
            NavigationView {
                List{
                Text("Reflexionando y meditando antes de actuar.")          //\\a
                Text("Enfrentándolo de manera directa y sin rodeos.")       //\\b
                Text("Buscando una solución pacífica y diplomática.")       //\\c
                Text("Liderando y guiando a los demás hacia la solución.")  //\\d
                
            }
            .navigationTitle("¿Cómo prefieres abordar un conflicto?")
            .navigationBarTitleDisplayMode(.inline)
                }
            .padding()
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}
struct PreguntaTresView_Previews: PreviewProvider {
    static var previews: some View {
        PreguntaTresView()
    }
}
