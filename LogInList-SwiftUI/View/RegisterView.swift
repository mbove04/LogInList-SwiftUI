//
//  RegisterView.swift
//  Wallet-SwiftUI
//
//  Created by Sailor on 13/05/2020.
//  Copyright © 2020 com.sailor. All rights reserved.
//

import SwiftUI

struct RegisterView: View {
    
    @ObservedObject private var registrationVM = RegistrationViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Crea una cuenta")
                    .font(.system(.largeTitle, design: .rounded))
                    .bold()
                    .padding(.bottom, 50)
                   
                
                SingleFormView(fieldName: "Nombre de Usuario", fieldValue: $registrationVM.username)
                ValidationFormView(
                    iconName: registrationVM.usernameLengthValid ? "checkmark.circle" : "xmark.circle",
                    iconColor: registrationVM.usernameLengthValid ? Color.green : Color.red,
                    formText: "Mínimo 6 caracteres",
                    conditionChecked: registrationVM.usernameLengthValid)
                    .padding()
                
                SingleFormView(fieldName: "Contraseña", fieldValue: $registrationVM.password, isProtected: true)
                VStack{
                    ValidationFormView(
                        iconName: registrationVM.passwordLengthValid ? "checkmark.circle" : "xmark.circle",
                        iconColor: registrationVM.passwordLengthValid ? Color.green : Color.red,
                        formText: "Mínimo 8 caracteres",
                        conditionChecked: registrationVM.passwordLengthValid)
                    ValidationFormView(
                        iconName: registrationVM.passwordCapitalLetter ? "checkmark.circle" : "xmark.circle",
                        iconColor: registrationVM.passwordCapitalLetter ? Color.green : Color.red,
                        formText: "Una mayúscula y una minúscula",
                        conditionChecked: registrationVM.passwordCapitalLetter)
                }.padding()
                
                SingleFormView(fieldName: "Confirmar Contraseña", fieldValue: $registrationVM.confirmPassword, isProtected: true)
                ValidationFormView(
                    iconName: registrationVM.passwordsMatch ? "checkmark.circle" : "xmark.circle",
                    iconColor: registrationVM.passwordsMatch ? Color.green : Color.red,
                    formText: "Las dos contraseñas deben coincidir",
                    conditionChecked: registrationVM.passwordsMatch)
                    .padding()
                    .padding(.bottom, 30)

                NavigationLink(destination: TransactionHistoryView()){
                    ZStack {
                         RoundedRectangle(cornerRadius: 29)
                             .frame(width: 200, height: 50)
                            .foregroundColor(.blue)
                        
                             Text("Registrarte")
                            .font(.custom("Avenir Next", size: 25))
                            .frame(width:300)
                            .foregroundColor(Color.white)
                    }
                   
                }
                
                HStack{
                    Text("¿Ya tienes cuenta?")
                        .font(.system(.body, design: .rounded))
                        .bold()
                    
                    NavigationLink(destination: TransactionHistoryView()){
                        Text("Entrar ahora")
                        .font(.system(.headline))
                        .foregroundColor(Color.green)
                    }
                }.padding()
               
                
            }.padding()
             .edgesIgnoringSafeArea(.top)
        }
     
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}





