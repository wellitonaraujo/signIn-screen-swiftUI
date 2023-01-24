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
                Color(.white).edgesIgnoringSafeArea(.all)
                Spacer()
                VStack {
                    Image("onboard")
                    
                    NavigationLink(
                        destination: OnboardingView(),
                        label: {
                            PrimaryButton(title: "Get Started")
                    }
                )
                    
                        .padding(.vertical, 40)
                    HStack {
                        Text("New around here?")
                        NavigationLink(
                            destination: SignInScreenView(),
                            label: {
                                Text("Sign In")
                                    .foregroundColor(Color("PrimaryColor"))
                                    .fontWeight(.bold)
                            }
                                        
                        )
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
