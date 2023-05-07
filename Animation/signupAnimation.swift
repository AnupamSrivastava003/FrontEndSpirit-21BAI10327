//
//  signupAnimation.swift
//  FrontEndSpirit
//
//  Created by SKUBI on 10/04/23.
//

import SwiftUI

struct signupAnimation: View {
    var body: some View {
        LottieSignupView()
            .frame(maxWidth: .infinity)
            .frame(height: 220)
    }
}

struct signupAnimation_Previews: PreviewProvider {
    static var previews: some View {
        signupAnimation()
    }
}
