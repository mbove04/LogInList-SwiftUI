//
//  TransactionHistoryView.swift
//  Wallet-SwiftUI
//
//  Created by Sailor on 14/05/2020.
//  Copyright © 2020 com.sailor. All rights reserved.
//

import SwiftUI

struct TransactionHistoryView: View {
   
    @Environment(\.presentationMode) var presentationMode
    @State var selectedTransaction: Transaction?
    
    var body: some View {
       NavigationView{
                 List(transactions.indices){ idx in
                   
                     TransactionRow(transaction: transactions[idx])
                        .onTapGesture {
                                self.selectedTransaction = transactions[idx]
                        }
                   
                }.sheet(item: self.$selectedTransaction){ idx in
                DetailView(transaction: idx)}
                    
                .navigationBarTitle("Tus gastos", displayMode: .automatic)
                .navigationBarItems(trailing:
                     Button(action: {
                          self.presentationMode.wrappedValue.dismiss()
                     }, label: {
                         Image(systemName: "power")
                             .font(.title)
                             .foregroundColor(.gray)
                     })
                 )
            
            }
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
           
    }
}



struct TransactionRow: View {
    var transaction: Transaction
    
    var body: some View {
        HStack {
            Image(transaction.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipped()
                .cornerRadius(30)
            
            Text(transaction.seller)
                .font(.system(.body, design: .rounded))
                .bold()
            
            Spacer()
            
            Text(transaction.amount)
                .font(.system(.footnote))
            
        }
    }
}

struct TransactionHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionHistoryView()
    }
}

