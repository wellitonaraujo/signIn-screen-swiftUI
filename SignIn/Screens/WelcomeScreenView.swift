//
//  WelcomeScreenView.swift
//  SignIn
//
//  Created by Welliton da Conceicao de Araujo on 23/01/23.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Spacer()
                Color(.white).edgesIgnoringSafeArea(.all)
                Spacer()
                VStack {
                    Image("onboard")
                    PrimaryButton(title: "Get Started")
                    
                    NavigationLink(
                        destination: SignInScreenView(),
                        label: {
                            Text("Sign In")
                                .font(.title3)
                                .fontWeight(.bold)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.white)
                                .foregroundColor(Color("PrimaryColor"))
                                .cornerRadius(50.0)
                                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                                .padding(.vertical)
                        })
                    .navigationBarHidden(true)
                    
                    HStack {
                        Text("New around here?")
                        Text("Sign In")
                            .foregroundColor(Color("PrimaryColor"))
                            .fontWeight(.bold)
                    }
                    
                }
                .padding()
            }
        }
    }
}

struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
