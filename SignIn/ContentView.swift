//
//  ContentView.swift
//  SignIn
//
//  Created by Welliton da Conceicao de Araujo on 23/01/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            WelcomeScreenView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PrimaryButton: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title3)
            .foregroundColor(.white)
            .fontWeight(.bold)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color("PrimaryColor"))
            .cornerRadius(50)
    }
}
