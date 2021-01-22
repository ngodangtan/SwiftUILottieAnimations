//
//  ContentView.swift
//  SwiftUILottieAnimations
//
//  Created by Ngo Dang tan on 22/01/2021.
//

import SwiftUI

/*
 - Bring in lottie lib
 - Create custom reusable view
 - Update some project settings
 - Bring in some dope animations
 */
struct ContentView: View {
    var body: some View {
       
        NavigationView {
            VStack {
                LottieView(fileName: "phone")
                    .frame(width: 250, height: 250, alignment: .center)
                   
                
            }
            .navigationTitle("SwiftUI Lottie")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
