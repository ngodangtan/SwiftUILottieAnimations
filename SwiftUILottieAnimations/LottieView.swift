//
//  LottieView.swift
//  SwiftUILottieAnimations
//
//  Created by Ngo Dang tan on 22/01/2021.
//

import Lottie
import SwiftUI
import UIKit

struct LottieView: UIViewRepresentable {

    
    typealias UIViewType = UIView
    var fileName:String
    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        let view = UIView(frame: .zero)
        
        // Add animation
        
        let animationView = AnimationView()
        animationView.animation = Animation.named(fileName)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        view.addSubview(animationView)
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor)
        
        ])
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LottieView>) {
        // do nothing
    }
}
