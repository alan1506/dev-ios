//
//  ContentView.swift
//  Traduccion
//
//  Created by alan on 05/10/21.
//

import SwiftUI

struct ContentView: View {
    @State private var alerta = false
    @State private var fecha = Date()
    @State private var image = NSLocalizedString("image", comment: "Imagen principal de app")
    var body: some View {
        VStack{
        
        Text("title")
            .padding()
            Button(action:{
                self.alerta.toggle()
            }){
                Text("button")
            }.alert(isPresented: self.$alerta){() -> Alert in
                Alert(title: Text("titleAlert"), message: Text("Message"), dismissButton: .default(Text("Ok")))
                
            }
            Form{
                DatePicker(selection: self.$fecha, displayedComponents: .date){
                    Text("titleDate")
                }
                Text("\(self.fecha)")
                Image(self.image)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
