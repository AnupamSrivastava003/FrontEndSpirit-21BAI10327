//
//  LottieloginView.swift
//  FrontEndSpirit
//
//  Created by SKUBI on 10/04/23.
//
import SwiftUI
import Lottie
struct LottieloginView: UIViewRepresentable {
    
    typealias UIViewType = UIView
    
    func makeUIView( context:
        UIViewRepresentableContext<LottieloginView>) -> UIView {
        let view = UIView(frame: .zero)
        
        let animationView = LottieAnimationView()
        let animation = LottieAnimation.named("login")
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.play()
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview (animationView)
        
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor), animationView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context:
        UIViewRepresentableContext<LottieloginView>){
    }
}
