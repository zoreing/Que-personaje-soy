//
//  ContentView.swift
//  Que personaje soy
//
//  Created by Jesus Rafael Valdes on 17/08/24.
//

import SwiftUI

struct ContentView: View {
       @StateObject var contadorPreguntas = contadorViewModel()
    var body: some View {
        
        VStack {
            NavigationView {
                List{
                    NavigationLink(destination: PreguntaDosView()){
                    Button("Hombre") {
                        contadorPreguntas.setCounts(count: 0,num :1)
                    }}
                    Button("Mujer"){
                        contadorPreguntas.setCounts(count: 0,num :2)
                    }
                    Button("Ninguno de los anteriores"){
                        contadorPreguntas.setCounts(count: 0,num :3)
                    }
                    Text(String(contadorPreguntas.contadorPreguntas[0]))
             
            }
            .navigationTitle("Cual es tu sexo")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
                }
            .padding()
        }
    }
    
}
final class contadorViewModel : ObservableObject{
    @Published var contadorPreguntas = [Int](repeating: 0, count: 5)
    func setCounts(count: Int, num : Int){
        contadorPreguntas[count] = num
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


