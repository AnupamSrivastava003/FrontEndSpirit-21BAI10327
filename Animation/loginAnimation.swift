//
//  loginAnimation.swift
//  FrontEndSpirit
//
//  Created by SKUBI on 10/04/23.
//

import SwiftUI

struct loginAnimation: View {
    var body: some View {
        
        LottieloginView()
            .frame(maxHeight: .infinity).ignoresSafeArea()
    }
}

struct loginAnimation_Previews: PreviewProvider {
    static var previews: some View {
        loginAnimation()
    }
}
