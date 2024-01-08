//
//  MyProfile.swift
//  MetflixApp
//
//  Created by Marvis Ighedosa on 18/10/2023.
//

import SwiftUI

struct MyProfile: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing:56){
                    VStack{
                        Image("Avatar3")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .cornerRadius(24)
                        HStack {
                            Text("Marvis")
                                .font(.title2)
                                .fontWeight(.bold)
                            Image(systemName: "chevron.down")
                        }
                    }.padding(.top,24)

                    VStack{
                        HStack(spacing:24){
                            Circle()
                                .frame(width: 56)
                                .foregroundColor(.red)
                                .overlay(Image(systemName:"bell.fill").font(.title2))
                            Text("Notifications").font(.title2)
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                        
                        HStack(spacing:24){
                            Circle()
                                .frame(width: 56)
                                .foregroundColor(.purple)
                                .overlay(Image(systemName:"arrow.down.square.fill").font(.title2))
                            Text("Downloads").font(.title2)
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                    }.listStyle(.plain)
                    
                    movieCategoriesView()
                    movieCategoriesView()

                    
                }
                .preferredColorScheme(.dark)
                .navigationBarItems(
                        leading:
                            HStack{
                                Text("My Netflix")
                                    .font(.title)
                                        },
                        trailing:
                            HStack{
                                Image(systemName: "highlighter").foregroundColor(.white)
                        })
            }.scrollIndicators(.hidden)
        }
        
        
//            .navigationTitle(Text("Hello"))
//
        
    }
}

struct MyProfile_Previews: PreviewProvider {
    static var previews: some View {
        MyProfile()
    }
}
