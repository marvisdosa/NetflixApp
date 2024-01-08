//
//  HomeScreen.swift
//  MetflixApp
//
//  Created by Marvis Ighedosa on 08/10/2023.
//

import SwiftUI

struct HomeScreen: View {
    var horizontalPadding:CGFloat = 16
    var movieCat = ["Action", "Romance", "Comedy"]

    var body: some View {
        TabView{
            ScrollView{
                VStack(spacing: 32){
                    VStack(spacing: 24) {
                        topNavBar(username: "Marvis")
                        HStack{
                            ForEach(movieCat, id: \.self) { x in
                                moviCategoriesButton(buttonText: x)
                            }
                            Spacer()
                        }
                    }
                    
                    filmOfDay()
                    movieCategoriesView()
                    movieCategories2()
                    movieCategoriesView()
                    
                }
                
                .ignoresSafeArea()
                .preferredColorScheme(.dark)
                .padding(.horizontal, horizontalPadding)
                
            }
            .scrollIndicators(.hidden)
            .tabItem{
                    Image(systemName: "house")
                    Text("Home")
            }
            
            New_Hot()
                .tabItem {
                    Image(systemName: "photo.on.rectangle.angled")
                    Text("New $ Hot")
                }
            MyProfile()
                .tabItem {
                    Image(systemName: "person")
                    Text("My Profile")
                }
            
            
        }.accentColor(.white)
    }
    
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
