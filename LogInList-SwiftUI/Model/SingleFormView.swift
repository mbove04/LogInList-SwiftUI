//
//  SingleFormView.swift
//  Wallet-SwiftUI
//
//  Created by Sailor on 14/05/2020.
//  Copyright © 2020 com.sailor. All rights reserved.
//

import SwiftUI

struct SingleFormView: View {
    
    var fieldName = ""
    @Binding var fieldValue: String
    var isProtected = false
    
    var body: some View{
        VStack{
            if isProtected{
                SecureField(fieldName, text: $fieldValue)
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                    .padding(.horizontal)
            }else{
                TextField(fieldName, text: $fieldValue)
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                    .padding(.horizontal)
            }
            Divider()
                .frame(height: 1)
                .background(Color.gray)
                .padding(.horizontal)
        }
    }
}



