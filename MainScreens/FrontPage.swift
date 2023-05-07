//
//  FrontPage.swift
//  FrontEndSpirit
//
//  Created by SKUBI on 10/04/23.
//

import SwiftUI

struct FrontPage: View {
    var body: some View {
        ZStack(){
            Color(.black).ignoresSafeArea()
            
            HStack {
                
                winwinview()
                
                Image("SPEED")
                    .padding(.top)
                
                winwinview()
            }
            
            VStack {
                
                VStack {
                    Image("androidlogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 34, height: 23)
                
                    Text("ANDROID CLUB VITB")
                        .foregroundColor(.black).opacity(0.7)
                        .bold()
                        .font(.system(size: 3))
                        .padding(.top, -12)
                }
                .frame(width: 55, height: 55)
                .background(RoundedRectangle(cornerRadius: 10))
                .foregroundColor(.white)
                
                Text("FRONTEND")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                
                Image("helmet")
                    .shadow(color: .red.opacity(0.3), radius: 10, x: 0, y: 10)
                
                Button {
                    
                } label: {
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 60)
                            .frame(maxWidth: .infinity)
                            .frame(height: 54)
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 20)
                        
                        Text("Login")
                            .foregroundColor(.black)
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
                            .padding(.horizontal, 20)
                        
                        Text("Sign up")
                            .foregroundColor(.white)
                            .font(.custom("FormulaFont", size: 30))
                    }
                }
            }
        }
    }
}

struct FrontPage_Previews: PreviewProvider {
    static var previews: some View {
        FrontPage()
    }
}
