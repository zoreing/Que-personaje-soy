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
                Text("")
                Text("Mujer")
                Text("Ninguno de los anteriores")
                    
            }
            .navigationTitle("Cual es tu sexo")
            .navigationBarTitleDisplayMode(.inline)
                }
        }
    }
    
}

struct PreguntaDosView_Previews: PreviewProvider {
    static var previews: some View {
        PreguntaDosView()
    }
}
