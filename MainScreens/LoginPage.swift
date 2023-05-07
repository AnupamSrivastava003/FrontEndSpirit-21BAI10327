//
//  LoginPage.swift
//  FrontEndSpirit
//
//  Created by SKUBI on 10/04/23.
//

import SwiftUI

struct LoginPage: View {
    
    @State var email = ""
    @State var password = ""
    @State var visibleL = false
    
    var body: some View {
        ZStack(){
            
            Color(.black).ignoresSafeArea()
            
            VStack(alignment: .leading) {

                loginAnimation()
                    .offset(y: -60)

                HStack() {
                    VStack(alignment: .leading){
                            Text("Login")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .bold()
                                .padding(.bottom, 2)
                            
                            Text("Enter your email and password to login")
                                .foregroundColor(.white)
                    }
                }
                .offset(y: -120)

                
                Group {
                    Text("Email")
                        .foregroundColor(.white)
                        .bold()
                    
                    TextField("E.g. Jackson", text: $email)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                        .background(Color(red: 0.961, green: 0.961, blue: 0.961).opacity(0.1))
                        .cornerRadius(8)
                    
                    Text("Password")
                        .foregroundColor(.white)
                        .bold()
                    ZStack(alignment: .trailing) {
                        SecureField("******", text: $password)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .frame(height: 44)
                            .autocorrectionDisabled()
                            .autocapitalization(.none)
                            .background(Color(red: 0.961, green: 0.961, blue: 0.961).opacity(0.1))
                            .cornerRadius(8)
                        
                        Button {
                            
                        } label: {
                            Image(systemName: self.visibleL ? "eye.slash.fill" : "eye.fill")
                                .foregroundColor(Color.white)
                                .padding(.trailing, 16)
                        }
                    }
                    
                    HStack {
                        Spacer()
                        Button {
                            
                        } label: {
                            Text("Forgot Password?")
                                .foregroundColor(.white).bold()
                        }

                    }
            
                    
                    Button {
                        
                    } label: {
                        ZStack {
                            
                            RoundedRectangle(cornerRadius: 60)
                                .frame(maxWidth: .infinity)
                                .frame(height: 54)
                                .foregroundColor(Color("fontcolor"))
                                .padding(.vertical, 10)
                            
                            Text("Sign up")
                                .foregroundColor(.white)
                                .font(.custom("FormulaFont", size: 30))
                        }
                    }
                    .padding(.top, 110)
                }
                
                
                HStack{
                    Spacer()
                    Text("I am a new user!")
                        .foregroundColor(.white)
                    
                    Button {
                        
                    } label: {
                        Text("Sign Up")
                            .foregroundColor(Color("Signupcolor"))
                            .bold()
                    }
                    Spacer()
                }
                
            }
            }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
