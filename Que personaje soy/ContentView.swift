//
//  ContentView.swift
//  Que personaje soy
//
//  Created by Jesus Rafael Valdes on 17/08/24.
//

import SwiftUI

struct ContentView: View {
       @StateObject var contadorPreguntas = contadorViewModel()
        @State private var navegateToPreguntaDos=false
    func nvtrue(){
        navegateToPreguntaDos=true
    }
    var body: some View {
        
        
            NavigationView {
                VStack{
                    
                    VStack{
                    Text("Cual es tu sexo")
                    Button("Hombre") {
                        print("Esta mierda entra ")
                        contadorPreguntas.setCounts(count: 0,num :1)
                        nvtrue()
                    }
                    Button("Mujer"){
                        contadorPreguntas.setCounts(count: 0,num :2)
                        nvtrue()
                        
                    }
                    Button("Ninguno de los anteriores"){
                        contadorPreguntas.setCounts(count: 0,num :3)
                        nvtrue()
                    }
                    
                    }
                    
                
                NavigationLink(destination: PreguntaDosDosView(contadorPreguntas: contadorPreguntas), isActive: $navegateToPreguntaDos){
                    EmptyView()
                }

                   // Text(String(contadorPreguntas.contadorPreguntas[0]))
             
            
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
      @State private var navegateToPregunta=false

    func nvtrue(){
        navegateToPregunta=true
    }
    var body: some View {
        
        
            NavigationView {
                VStack{
                    Text("¿Qué es lo que más importa en una situación difícil?")
                    VStack{
                        Button("La eficiencia y la lógica para encontrar la mejor solución"){
                        contadorPreguntas.setCounts(count: 1,num :1)
                        nvtrue()
                        }
                        Button("El coraje y la acción inmediata para resolver el problema."){
                            contadorPreguntas.setCounts(count: 1,num :2)
                        nvtrue()
                        }

                        Button("La moralidad y el impacto positivo en los demás."){
                            contadorPreguntas.setCounts(count: 1,num :3)
                            nvtrue()
                        }

                        Button("La estrategia a largo plazo y el éxito del grupo."){
                            contadorPreguntas.setCounts(count: 1,num :4)
                            nvtrue()
                        }
                        

                    Text(String(contadorPreguntas.contadorPreguntas[1]))
                  //  Text("localetior")
                    }
                    NavigationLink(destination: PreguntaTresTresView(contadorPreguntas: contadorPreguntas), isActive: $navegateToPregunta){
                       EmptyView()
                }
                }

                //Text("La eficiencia y la lógica para encontrar la mejor solución.")     //A
                //ext("El coraje y la acción inmediata para resolver el problema.")      //B
                //ext("La moralidad y el impacto positivo en los demás")                 //C
                //Text("La estrategia a largo plazo y el éxito del grupo.s")              //D
                    //Text(String(contadorPreguntas.contadorPreguntas[1]))

    
                }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
            .padding()
    }
    
}

struct PreguntaTresTresView: View {

    @StateObject var contadorPreguntas = contadorViewModel()
      @State private var navegateToPregunta=false

    var body: some View {





     
                Text("Reflexionando y meditando antes de actuar.")          //\\a
                Text("Enfrentándolo de manera directa y sin rodeos.")       //\\b
                Text("Buscando una solución pacífica y diplomática.")       //\\c
                Text("Liderando y guiando a los demás hacia la solución.")  //\\d

        
                    Text(String(contadorPreguntas.contadorPreguntas[0]))
                    Text(String(contadorPreguntas.contadorPreguntas[1]))
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


