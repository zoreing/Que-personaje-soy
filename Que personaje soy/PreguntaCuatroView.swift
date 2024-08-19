//
//  PreguntaCuatroView.swift
//  Que personaje soy
//
//  Created by Jesus Rafael Valdes on 18/08/24.
//

import SwiftUI

struct PreguntaCuatroView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)

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
    }
}

struct PreguntaCuatroView_Previews: PreviewProvider {
    static var previews: some View {
        PreguntaCuatroView()
    }
}
