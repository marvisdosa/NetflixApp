//
//  HomeScreen.swift
//  MetflixApp
//
//  Created by Marvis Ighedosa on 08/10/2023.
//

import SwiftUI

struct profileSelectScreen: View {
    @State private var showSplashScreen = false
    @State var presentScreen = false
    
    var body: some View {
        ZStack {
            if showSplashScreen {
                homeScreenStructure(presentScreen: $presentScreen)
            }
            else {
                SplashScreen()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1){
                self.showSplashScreen = true
            }
        }
        .fullScreenCover(isPresented: $presentScreen) {
            HomeScreen()
        }
    }
}

struct profileSelectionScreen_Previews: PreviewProvider {
    static var previews: some View {
        profileSelectScreen()
    }
}


struct homeScreenStructure : View {
    @Binding var presentScreen:Bool
    var horizontalPadding:CGFloat = 16
    var body: some View {
        
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                HStack{
                    Spacer()
                    Text("Who's watching?")
                        .foregroundColor(.white)
                    Spacer()
                    Button {
                        print("Yello")
                    } label: {
                        Text("Edit")
                    }
                    
                }.padding(.horizontal, horizontalPadding)
                
                
                Spacer()
                
                VStack{
                    
                    HStack{
                        VStack{
                            Image("Avatar1")
                                .resizable()
                                .cornerRadius(12)
                                .frame(width: 100, height: 100)
                            Text("Bella")
                                .font(.title3)
                                .foregroundColor(.white)
                        }
                        .onTapGesture {
                            self.presentScreen = true
                        }
                        .padding(.all, 8)
                        VStack{
                            Image("Avatar2")
                                .resizable()
                                .cornerRadius(12)
                                .frame(width: 100, height: 100)
                            Text("Marvis")
                                .font(.title3)
                                .foregroundColor(.white)
                        }
                        .onTapGesture {
                            self.presentScreen = true
                        }
                        .padding(.all, 8)
                    }
                    HStack{
                        VStack{
                            Image("Avatar4")
                                .resizable()
                                .cornerRadius(12)
                                .frame(width: 100, height: 100)
                            Text("Okon")
                                .font(.title3)
                                .foregroundColor(.white)
                        }
                        .onTapGesture {
                            self.presentScreen = true
                        }
                        .padding(.all, 8)
                        VStack{
                            Image("Avatar3")
                                .resizable()
                                .cornerRadius(12)
                                .frame(width: 100, height: 100)
                            Text("Cynthia")
                                .font(.title3)
                                .foregroundColor(.white)
                        }
                        .onTapGesture {
                            self.presentScreen = true
                        }
                        .padding(.all, 8)
                        
                    }
                    
                }
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(lineWidth: 1)
                        .frame(width: 100, height: 100)
                    Image(systemName: "plus")
                        .font(.title)
                }
                .padding(.top, 24)
                .foregroundStyle(.gray)
                
                Spacer()
            }
        }
        
    }
}


