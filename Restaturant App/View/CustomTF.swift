//
//  CustomTF.swift
//  Restaturant App
//
//  Created by Mahesh Prasad on 09/01/21.
//

import SwiftUI

struct CustomTF: View {
    
    @Binding var value : String
    var isemail = false
    var reenter = false
    
    
    var body: some View {
        VStack(spacing: 8) {
            
            HStack{
                Text(self.isemail ? "Email ID": self.reenter ? "Re-Enter": "Password").foregroundColor(Color.black.opacity(0.1))
                
                Spacer()
            }
            
            HStack{
                
                if self.isemail {
                    TextField("", text: self.$value)
                } else {
                    SecureField("", text: self.$value)
                }
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: self.isemail ? "envelope.fill" : "eye.slash.fill")
                })
                
            }
            
            Divider()
            
        }
    }
}

struct CustomTF_Previews: PreviewProvider {
    static var previews: some View {
        CustomTF(value: .constant(""))
    }
}
