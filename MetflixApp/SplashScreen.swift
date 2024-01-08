//
//  homeScreen.swift
//  lessons
//
//  Created by Marvis Ighedosa on 23/09/2023.
//

import SwiftUI

struct SplashScreen: View {
    @State var isActive: Bool = false
    var body: some View {

            ZStack{
                Color(.black)
                    .ignoresSafeArea()
                   Image("Metflixlogo")
                    .resizable()
                    .frame(width: isActive ? 300 : 0, height: isActive ? 300 : 0 )
                    .animation(.easeOut(duration: 1), value: isActive)
            }
            .onAppear {
                self.isActive = true
                }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
