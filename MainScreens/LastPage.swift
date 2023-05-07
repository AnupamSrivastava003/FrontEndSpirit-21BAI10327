//
//  lastPage.swift
//  FrontEndSpirit
//
//  Created by SKUBI on 10/04/23.
//

import SwiftUI

struct lastPage: View {
    var body: some View {
        ScrollView{
            VStack (spacing: 19){
                Image("Vector 65")
                
                HStack {
                    VStack(alignment: .leading) {
                        
                        Text("Australian GP")
                            .foregroundColor(.white).bold()
                        .font(.title3)
                        
                        Text("Melbourne")
                            .foregroundColor(Color("Signupcolor")).bold()
                        .font(.caption)

                    }
                    
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text("16K")
                            .foregroundColor(.white).bold()
                            .font(.title3)
                        
                        Text("Participants")
                            .foregroundColor(Color("Signupcolor")).bold()
                        .font(.caption)
                    }
                }
                
                HStack {
                    VStack(alignment: .trailing) {
                        Text("31st Mar - 2nd April")
                            .foregroundColor(.white).bold()
                            .font(.title3)
                    }
                    Spacer()
                    Text("36,000 Pool raised")
                        .padding(10)
                        .foregroundColor(.white).bold()
                        .font(.system(size: 12))
                        .background(.blue)
                        .cornerRadius(8)
                }
                
                Button {
                    
                } label: {
                    Text("Place Bet")
                        .frame(width: 50)
                        .font(.headline).bold()
                        .foregroundColor(.white)
                        .padding(.horizontal, 150)
                        .background(.red)
                        .cornerRadius(8)
                }
                
                Text("------------Lockdown in 06:12:44-----------")
                    .foregroundColor(.white)
                
                
                HStack {
                    VStack(alignment: .leading) {
                        
                        Text("Available Funds")
                            .foregroundColor(.white).bold()
                        .font(.caption)
                        
                        Text("₹16,000")
                            .foregroundColor(Color("Signupcolor")).bold()
                        .font(.largeTitle)

                    }
                    
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text("Placed")
                            .foregroundColor(.white).bold()
                            .font(.title3)
                        
                        Text("3rd")
                            .foregroundColor(Color(.white)).bold()
                            .font(.title)
                        .font(.caption)
                        Text("in last race")
                            .foregroundColor(Color(.white)).bold()
                        .font(.caption)
                    }
                }
                
                Image("Frame 295")
                
                Image("Frame 296")
                

                
            }
            .padding()
        }
        .background(.black)
    }
}

struct lastPage_Previews: PreviewProvider {
    static var previews: some View {
        lastPage()
    }
}
