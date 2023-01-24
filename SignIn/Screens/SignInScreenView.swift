//
//  SignInScreenView.swift
//  SignIn
//
//  Created by Welliton da Conceicao de Araujo on 23/01/23.
//

import SwiftUI

struct SignInScreenView: View {
    @State private var email: String = ""
    @Environment(\.presentationMode) var presentationMode: Binding
    
    var btnBack : some View { Button(action: {
           self.presentationMode.wrappedValue.dismiss()
       }) {
           HStack {
               Image(systemName: "chevron.backward")
                   .aspectRatio(contentMode: .fit)
                   .foregroundColor(Color("PrimaryColor"))
                   .fontWeight(.semibold)
               Text("Back")
                   .foregroundColor(Color("PrimaryColor"))
           }
           }
       }
    
    var body: some View {
        ZStack {
            Color(.white).edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                VStack {
                    Text("Sign In")
                        .fontWeight(.bold)
                        .font(.largeTitle)
                        .padding(.bottom, 35)
                    
                    SocialLoginButton(image: Image("apple"), text: Text("Sign in with Apple"))
                    SocialLoginButton(image: Image("google"), text: Text("Sign in with Goolge"))
                        .foregroundColor(Color("PrimaryColor"))
                        .padding(.vertical)
                    
                    Text("or get a link emailed to you")
                        .foregroundColor(Color.black.opacity(0.5))
                    
                    TextField("Work email address", text: $email)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                        .padding(.vertical)
                    PrimaryButton(title: "Send email link")
                }
                Spacer()
                Divider()
                Spacer()
                
                Text("Read out Terms & Conditions")
                    .foregroundColor(Color("PrimaryColor"))
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: btnBack)
            .padding()
        }
    }
}

struct SignInScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreenView()
    }
}

struct SocialLoginButton: View {
    var image: Image
    var text: Text
    
    var body: some View {
        HStack {
            image
                .padding(.horizontal)
            Spacer()
            
            text
                .font(.title2)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(50.0)
        .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
    }
}
