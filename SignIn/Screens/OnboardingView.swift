//
//  OnboardingView.swift
//  SignIn
//
//  Created by Welliton da Conceicao de Araujo on 24/01/23.
//

import SwiftUI

struct OnboardingView: View {
    @Environment(\.presentationMode) var presentationMode: Binding
    
    var btnBack: some View {
        Button(action: {
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
        Text("Bem vindo")
        
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: btnBack)
        
    }

}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
