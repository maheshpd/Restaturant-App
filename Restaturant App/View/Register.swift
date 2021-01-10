//
//  Register.swift
//  Restaturant App
//
//  Created by Mahesh Prasad on 09/01/21.
//

import SwiftUI

struct Register: View {
    
    @State var user = ""
    @State var pass = ""
    @State var repass = ""
    @State var agree = false
    @Binding var show: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading, content: {
            VStack{
                HStack{
                    Spacer()
                    Image("shape")
                }
                
                VStack{
                    Image("logo")
                    Image("name").padding(.top, 10)
                }.offset(y: -122)
                .padding(.bottom, -132)
                
                VStack(spacing: 20) {
                    
                    Text("Hello").font(.title).fontWeight(.bold)
                    
                    Text("Sign Into Your Account").fontWeight(.bold)
                    
                    CustomTF(value: self.$user, isemail: true)
                    
                    CustomTF(value: self.$pass, isemail: false)
                    
                    CustomTF(value: self.$repass, isemail: false)
                    
                    HStack {
                        
                        Button(action: {
                            self.agree.toggle()
                            
                        }, label: {
                            ZStack {
                                Circle().fill(Color.black.opacity(0.05)).frame(width: 20, height: 20)
                                
                                if self.agree {
                                    Image("check").resizable().frame(width: 10, height: 10)
                                        .foregroundColor(Color("Color1"))
                                }
                            }
                        })
                        
                        Text("I Read And Agree The Terms And Conditions").font(.caption)
                            .foregroundColor(Color.black.opacity(0.1))
                        
                        Spacer()
                        
                    }
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Register Now")
                            .frame(width: UIScreen.main.bounds.width - 100)
                            .padding(.vertical)
                            .foregroundColor(.white)
                    }).background(Color("Color1"))
                    .clipShape(Capsule())
                    
                    Text("Or Register Using Social Media").fontWeight(.bold)
                    
                    SocialMedia()
                    
                    
                }.padding()
                .background(Color.white)
                .cornerRadius(5)
                .padding()
                
                Spacer(minLength: 0)
            }.edgesIgnoringSafeArea(.top)
            .background(Color("Color").edgesIgnoringSafeArea(.all))
            
            Button(action: {
                self.show.toggle()
            }, label: {
                Image(systemName: "arrow.left").resizable().frame(width: 18, height: 15).foregroundColor(.black)
            }).padding()
        }).navigationTitle("")
        .navigationBarHidden(true)
    }
}

