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
                        

                  //  Text(String(contadorPreguntas.contadorPreguntas[1]))
                  //  Text("localetior")
                    }
                    NavigationLink(destination: PreguntaTresTresView(contadorPreguntas: contadorPreguntas), isActive: $navegateToPregunta){
                       EmptyView()
                        }
                    }
                }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
            .padding()
    }
    
}

struct PreguntaTresTresView: View {

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
                        Button("Reflexionando y meditando antes de actuar."){
                        contadorPreguntas.setCounts(count: 2,num :1)
                        nvtrue()
                        }
                        Button("Enfrentándolo de manera directa y sin rodeos."){
                            contadorPreguntas.setCounts(count: 2,num :2)
                        nvtrue()
                        }
                        Button("Buscando una solución pacífica y diplomática."){
                            contadorPreguntas.setCounts(count: 2,num :3)
                            nvtrue()
                        }
                        Button("Liderando y guiando a los demás hacia la solución."){
                            contadorPreguntas.setCounts(count: 2,num :4)
                            nvtrue()
                        }
                //    Text(String(contadorPreguntas.contadorPreguntas[1]))
                  //  Text("localetior")
                    }
                    NavigationLink(destination: PreguntaCuatroCuatroView(contadorPreguntas: contadorPreguntas), isActive: $navegateToPregunta){
                       EmptyView()
                        }
                    }
            }

            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
            .padding()
               // Text("Reflexionando y meditando antes de actuar.")          //\\a
               //Text("Enfrentándolo de manera directa y sin rodeos.")       //\\b
               //Text("Buscando una solución pacífica y diplomática.")       //\\c
               // Text("Liderando y guiando a los demás hacia la solución.")  //\\d
                 //   Text(String(contadorPreguntas.contadorPreguntas[0]))
                 //   Text(String(contadorPreguntas.contadorPreguntas[1]))
                //Text(String(contadorPreguntas.contadorPreguntas[2]))
    }
}

struct PreguntaCuatroCuatroView: View {

    @StateObject var contadorPreguntas = contadorViewModel()
      @State private var navegateToPregunta=false
      
    func nvtrue(){
        navegateToPregunta=true
    }
    var body: some View {

        
            
                
                //Text("El de sabio consejero, ofreciendo guía desde la experiencia.")        //A
              //  Text("El de héroe valiente, tomando riesgos para el éxito del equipo.")     //B
              //  Text("El de protector, asegurándote de que todos estén bien y seguros.")    //C
              //  Text("El de líder, tomando decisiones estratégicas para el bien común.")    //D


          NavigationView {
                VStack{
                    Text("¿Qué rol prefieres asumir en un equipo?")
                    VStack{
                        Button("El de sabio consejero, ofreciendo guía desde la experiencia."){
                        contadorPreguntas.setCounts(count: 3,num :1)
                        nvtrue()
                        }
                        Button("El de héroe valiente, tomando riesgos para el éxito del equipo."){
                            contadorPreguntas.setCounts(count: 3,num :2)
                        nvtrue()
                        }
                        Button("El de protector, asegurándote de que todos estén bien y seguros."){
                            contadorPreguntas.setCounts(count: 3,num :3)
                            nvtrue()
                        }
                        Button("El de líder, tomando decisiones estratégicas para el bien común."){
                            contadorPreguntas.setCounts(count: 3,num :4)
                            nvtrue()
                        }
                  //  Text("localetior")
                    }
                    NavigationLink(destination: PreguntaCincoCincoView(contadorPreguntas: contadorPreguntas), isActive: $navegateToPregunta){
                       EmptyView()
                        }
                    }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
            .padding()
               //     Text(String(contadorPreguntas.contadorPreguntas[0]))
               //     Text(String(contadorPreguntas.contadorPreguntas[1]))
               //     Text(String(contadorPreguntas.contadorPreguntas[2]))
    }
}


struct PreguntaCincoCincoView: View {
       @StateObject var contadorPreguntas = contadorViewModel()
      @State private var navegateToPregunta=false
      
    func nvtrue(){
        navegateToPregunta=true
    }

    var body: some View {
       
                
            //    Text("Sabio y espiritual, con una profunda conexión con el universo.")          //A
            //    Text("Aventurero y audaz, con un enfoque pragmático en la vida.")               //\\B
            //    Text("Compasivo y justo, siempre buscando lo mejor para los demás.")            //\\C
           //     Text("Fuerte y decidido, con un enfoque en el liderazgo y la justicia.")        //\\D
                
         NavigationView {
                VStack{
                    Text("¿Cómo te describirían mejor?")
                    VStack{
                        Button("espiritual, con una profunda conexión con el universo.."){
                        contadorPreguntas.setCounts(count: 4,num :1)
                        nvtrue()
                        }
                        Button("Aventurero y audaz, con un enfoque pragmático en la vida."){
                            contadorPreguntas.setCounts(count: 4,num :2)
                        nvtrue()
                        }
                        Button("Compasivo y justo, siempre buscando lo mejor para los demás."){
                            contadorPreguntas.setCounts(count: 4,num :3)
                            nvtrue()
                        }
                        Button("Fuerte y decidido, con un enfoque en el liderazgo y la justicia."){
                            contadorPreguntas.setCounts(count: 4,num :4)
                            nvtrue()
                        }
                  //  Text("localetior")
                    }
                   NavigationLink(destination: ResultadoView(contadorPreguntas: contadorPreguntas), isActive: $navegateToPregunta){
                       EmptyView()
                        }
                    }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
            .padding()


        
    }
}


struct ResultadoView: View {
       @StateObject var contadorPreguntas = contadorViewModel()
    //var dataUno : Int = contadorPreguntas.$contadorPreguntas[0]
    //var data : [Int] = contadorViewModel().getCounts()
    

    
    
    var body: some View {
        let copiaArray = contadorPreguntas.getCounts()
        let defaultString = quePersonajeEresTu(datos: copiaArray) ?? "na"
        
      VStack{
        Text("Tu eres")
          
         Text(defaultString)
      }
      .navigationBarHidden(true)
    }
}

func quePersonajeEresTu(datos : [Int])-> String?{
        var genero = datos[0]
        let respuestas = Array(datos[1...])
        
        let personajesMasculinos = [
            1 : "Yoda",
            2 : "Han Solo",
            3 : "Darth Vader",
            4 : "Luke Skywalker"
        ]

        let personajesFemeninos = [
            1 : "Mon Mothma",
            2 : "Ahsoka Tano",
            3 : "Padme Amidala",
            4 : "Leia Organa"
        ]
    if genero == 3 {
        genero = Int.random(in: 1...2)
    }

        var contRespuestas : [Int : Int] = [1 : 0, 2 : 0, 3 : 0, 4: 0 ]

  for respuesta in respuestas {
        if let _ = contRespuestas[respuesta] {
            contRespuestas[respuesta]! += 1
        }
    }
    let numeroGanador = contRespuestas.max { a, b in a.value < b.value }?.key

     var personaje: String?





 if genero == 1 {  // 1 es Masculino
        personaje = personajesMasculinos[numeroGanador ?? 0]
    } else if genero == 2 {  // 2 es Femenino
        personaje = personajesFemeninos[numeroGanador ?? 0]
    }
    
    
    
    return personaje
}




final class contadorViewModel : ObservableObject{
    @Published var contadorPreguntas = [Int](repeating: 0, count: 5)
    
    init(){
        contadorPreguntas = [0,0,0,0,0]
    }
    func setCounts(count: Int, num : Int){
        contadorPreguntas[count] = num
    }
    func getCounts() -> [Int]{
        return contadorPreguntas
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


