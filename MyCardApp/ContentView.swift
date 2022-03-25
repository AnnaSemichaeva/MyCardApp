//
//  ContentView.swift
//  MyCardApp
//
//  Created by macuser on 3/23/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52).ignoresSafeArea()
            VStack {
                Image("ava").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).frame(width: 150, height: 150).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle().stroke(lineWidth: 5))
                Text("Anna Semichaeva")
                    .font(.title2)
                    .fontWeight(.heavy)
                Text("IOS Developer")
                    .font(.headline)
                    .fontWeight(.light)
                Divider()
                Card(image: "phone.fill", message: "+79017936211")
                Card(image: "envelope.fill", message: "tdhnss@gmail.com")
                
            }.foregroundColor(.white)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Card: View {
    let image: String
    let message: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25).padding(.horizontal).frame(height: 50).overlay(HStack {Image(systemName: image)
            Text(message)
                .fontWeight(.semibold)
            
        }.foregroundColor(Color(red: 0.10, green: 0.74, blue: 0.61)))
    }
}
