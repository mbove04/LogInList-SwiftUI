//
//  ValidationFormView.swift
//  Wallet-SwiftUI
//
//  Created by Sailor on 14/05/2020.
//  Copyright © 2020 com.sailor. All rights reserved.
//

import SwiftUI

struct ValidationFormView: View {
    
    var iconName = "xmark.circle"
    var iconColor = Color(red: 0.9, green: 0.5, blue: 0.5)
    var formText = ""
    var conditionChecked = false
    
    var body: some View{
        HStack{
            Image(systemName: iconName)
                .foregroundColor(iconColor)
            Text(formText)
                .font(.system(.body, design: .rounded))
                .foregroundColor(.gray)
                .strikethrough(conditionChecked)
            Spacer()
        }
    }
}


