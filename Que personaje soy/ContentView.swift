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
                    NavigationLink(destination: PreguntaDosDosView()){
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




struct PreguntaDosDosView: View {
    @StateObject var contadorPreguntas = contadorViewModel()
    var body: some View {
        
        
        VStack {
            NavigationView {
                List{
                Text("La eficiencia y la lógica para encontrar la mejor solución.")     //A
                Text("El coraje y la acción inmediata para resolver el problema.")      //B
                Text("La moralidad y el impacto positivo en los demás")                 //C
                Text("La estrategia a largo plazo y el éxito del grupo.s")              //D
                    Text(String(contadorPreguntas.contadorPreguntas[0]))
            }
    
    
                }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
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


