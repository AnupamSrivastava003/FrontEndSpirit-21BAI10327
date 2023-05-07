//
//  SignupPage.swift
//  FrontEndSpirit
//
//  Created by SKUBI on 10/04/23.
//

import SwiftUI

struct SignupPage: View {
    
    @State var firstname = ""
    @State var lastname = ""
    @State var email = ""
    @State var password = ""
    @State var visibleL = false
    
    var body: some View {
            
        ScrollView {
            
            ZStack{
                
                
                VStack (alignment: .leading){
                    
                    signupAnimation()
                    
                    DetailView()
                    
                    HStack {
                        Spacer()
                        Button {
                            
                        } label: {
                            Text("Forgot Password?")
                                .foregroundColor(.white).bold()
                        }
                        
                    }
                    .padding(.bottom, 100)
    
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
                    .padding(.top, 10)
                    
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
                    .padding(.bottom, 20)
                }
            }
        }
        .background(.black).ignoresSafeArea()
    }
}


struct SignupPage_Previews: PreviewProvider {
    static var previews: some View {
        SignupPage()
    }
}

struct SignupButtonView: View {
    var body: some View {
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
}

struct DetailView: View {
    @State var firstname = ""
    @State var lastname = ""
    @State var email = ""
    @State var password = ""
    @State var visibleL = false
    var body: some View {
        VStack (alignment: .leading, spacing: 20){
            Text("SIGN-UP")
                .foregroundColor(.white)
                .font(.largeTitle).bold()
            
            Text("Create an account to become a member.")
                .foregroundColor(.white).opacity(0.6)
            
            
            Text("First Name")
                .foregroundColor(.white)
                .bold()
            
            TextField("E.g. Jackson", text: $firstname)
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 44)
                .autocorrectionDisabled()
                .autocapitalization(.none)
                .background(Color(red: 0.961, green: 0.961, blue: 0.961).opacity(0.1))
                .cornerRadius(8)
            
            Text("Last Name")
                .foregroundColor(.white)
                .bold()
            
            TextField("E.g. Smith", text: $lastname)
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 44)
                .autocorrectionDisabled()
                .autocapitalization(.none)
                .background(Color(red: 0.961, green: 0.961, blue: 0.961).opacity(0.1))
                .cornerRadius(8)
            
            Text("Email")
                .foregroundColor(.white)
                .bold()
            
            TextField("hello@company.com", text: $email)
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
        }
    }
}
