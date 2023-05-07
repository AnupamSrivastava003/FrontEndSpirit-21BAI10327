//
//  winwinview.swift
//  FrontEndSpirit
//
//  Created by SKUBI on 10/04/23.
//

import SwiftUI

struct winwinview: View {
    var body: some View {
        LottieView()
            .frame(maxHeight: .infinity).ignoresSafeArea()
    }
}

struct winwinview_Previews: PreviewProvider {
    static var previews: some View {
        winwinview()
    }
}
