//
//  Home.swift
//  Restaturant App
//
//  Created by Mahesh Prasad on 09/01/21.
//

import SwiftUI

struct Home: View {
    
    @State var user = ""
    @State var pass = ""
    @State var show = false
    
    var body: some View {
        ZStack{
            NavigationLink(
                destination: Register(show: self.$show),
                isActive: self.$show,
                label: {
                    Text("")
                })
            
            VStack{
                HStack {
                    Spacer()
                    
                    Image("shape")
                }
                
                VStack{
                    Image("logo")
                    Image("name").padding(.top, 10)
                }.offset(y: -122)
                .padding(.bottom, -132)
                
                VStack(spacing: 20){
                    Text("Hello").font(.title).fontWeight(.bold)
                    
                    Text("Sign Into yout Account").fontWeight(.bold)
                    
                    CustomTF(value: self.$user, isemail: true)
                    
                    CustomTF(value: self.$pass, isemail: false)
                    
                    HStack{
                        Spacer()
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Forget Password ?").foregroundColor(Color.black.opacity(0.1))
                        })
                    }
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Login")
                            .frame(width: UIScreen.main.bounds.width - 100)
                            .padding(.vertical)
                            .foregroundColor(.white)
                    }).background(Color("Color1"))
                    .clipShape(Capsule())
                    
                    Text("Or Login Using Social Media").fontWeight(.bold)
                    
                    SocialMedia()
                    
                }.padding()
                .background(Color.white)
                .cornerRadius(5)
                .padding()
                
                HStack{
                    
                    Text("Don't Have an Account ?")
                    
                    Button(action: {
                        self.show.toggle()
                        
                    }, label: {
                        Text("Register Now").foregroundColor(Color("Color1"))
                    })
                }.padding(.top)
                
                Spacer(minLength: 0)
            }.edgesIgnoringSafeArea(.top)
            .background(Color("Color").edgesIgnoringSafeArea(.all))
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
