//
//  DetailView.swift
//  Wallet-SwiftUI
//
//  Created by Sailor on 14/05/2020.
//  Copyright © 2020 com.sailor. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    @Environment(\.presentationMode) var presentationMode
    var transaction: Transaction
    @State var showAlertView = false
    
    var body: some View {
   
            VStack{
                Image(transaction.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                     .frame(width: 300, height: 300)
                    .clipped()
                
                Text(transaction.date)
                    .font(.system(.body, design: .rounded))
                    .fontWeight(.black)
                    .frame(width:300)
                
                Text(transaction.seller)
                .font(.custom("Avenir Next", size: 25))
                .frame(width:300)
                
                Text(transaction.amount)
                    .font(.system(.body, design: .rounded))
                    .fontWeight(.bold)
                    .frame(width:300)
                    .foregroundColor(.red)
                                    
            } .overlay(
                       HStack{
                           Spacer()
                           
                           VStack{
                           Button(action:{
                               self.showAlertView = true
                           }, label: {
                               Image(systemName: "chevron.down.circle")
                                   .font(.largeTitle)
                                   .foregroundColor(.black)
                           })
                           .padding(.trailing, 20)
                           .padding(.top, -100)
                               
                               Spacer()
                           }
                       }
                   )  .alert(isPresented: $showAlertView){
                             Alert(title: Text("¡Atención!"),
                             message: Text("¿Ya observaste el detalle?"),
                             primaryButton: .default(Text("Si"), action: {self.presentationMode.wrappedValue.dismiss()}),
                             secondaryButton: .cancel(Text("No")))
                         }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(transaction: Transaction(seller: "Adidas", amount: "62.00€", date: "14/05/2020", image: "adidas"))
    }
}

