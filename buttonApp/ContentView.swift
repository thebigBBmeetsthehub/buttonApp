//
//  ContentView.swift
//  buttonApp
//
//  Created by Scholar on 7/26/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.red)
            TextField("Name of Scholar", text: $name)
                .padding(10.0)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
                .border(Color.red, width: 2)
                .padding()
            Button("Submit") {
                textTitle = "Welcome, \(name)!"
                
            }
            .font(.title)
            .buttonStyle(.borderedProminent)
            .tint(.red)
            .clipShape(Ellipse())
            
        }
    }
}

#Preview {
    ContentView()
}
