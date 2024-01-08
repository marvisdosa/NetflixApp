//
//  uiComponents.swift
//  lessons
//
//  Created by Marvis Ighedosa on 23/09/2023.
//

import SwiftUI

struct movieCategories2: View {
    
    var body: some View {
        VStack(spacing:16){
            HStack{
                Text("Top Trending Series")
                Spacer()
            }
            ScrollView(.horizontal){
                HStack(spacing: 24) {
                    ForEach(allMoviews, id: \.self) { x in
                    
//                            Image("1")
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
//                                .frame(width: 100, height: 200, alignment: .bottomLeading)
//                                .padding(.trailing,-32)
                            
                                HStack{
                                    Text(x.moviePosition.description)
                                        .font(.system(size: 200))
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                        .shadow(color: .white, radius: 1)
                                        .frame(width: 100, alignment: .leading)
                                        .offset(x: 16, y: 28)
                                    Image(x.posterImage)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 160, height: 200)
                                    
                                        .cornerRadius(12)
                                }
                            
                    }
                }
            }.scrollIndicators(.hidden)
            
        }.preferredColorScheme(.dark)
    }
}

struct movieCategories2_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            movieCategories2()
            movieCategoriesView()
        }
        .preferredColorScheme(.dark)
        
    }
}




struct filmOfDay : View {
    var horizontalPadding:CGFloat = 16
    @State var showScreen = false
    var body: some View{
        ZStack{
            Image("BAllerina")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(12)
                .border(.opacity(0.08), width: 3)
            Button {
                showScreen.toggle()
            } label: {
                VStack {
                    Circle()
                        .frame(width: 72)
                        .foregroundColor(.white)
                    
                        .overlay {
                            Image(systemName:"play")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                }
            }.fullScreenCover(isPresented: $showScreen) {
                movieDetail()
            }
        }
    }
    
    struct primaryButton: View {
        @State var buttonText:String
        @State var buttonIcon:String
        var body: some View {
            Button{} label: {
                HStack {
                    Image(systemName: "play")
                    Text(buttonText)
                        .font(.title3)
                    
                }
                .frame(width: 180, height: 48)
                .foregroundColor(.black)
                .background(.white)
                .cornerRadius(16)
                
            }
            
            
        }
    }
}

struct SecondaryButton: View {
    @State var buttonText:String
    @State var buttonIcon:String
    var body: some View {
        HStack {
            Button{} label: {
                HStack {
                    Image(systemName: buttonIcon)
                    Text(buttonText)
                        .font(.title3)
                }
                .frame(width: 180, height: 48)
                .foregroundColor(.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.white, lineWidth: 1)
                )
            }
        }
    }
}



struct movieCategoriesView: View {
    var body: some View{
        VStack(alignment: .leading){
            HStack{
                Text("Top Trending Series")
              Spacer()
                Button {
                    
                } label: {
                    Text("See all")
                        .foregroundColor(.white)
                        .underline()
                        .padding()
                }
                
            }
            .frame(maxWidth: .infinity)
            ScrollView(.horizontal){
                HStack(spacing: 18) {
                    ForEach(shuffleArray(), id: \.self) { x in
                        Image(x)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 160, height: 200)
                            .cornerRadius(12)
                    }
                }
            }.scrollIndicators(.hidden)
            
            
        }
        .frame(maxWidth: .infinity)
    }
}

struct topNavBar: View {
    var username:String = "Marvis"
    
    var body: some View{
        HStack{
            Text("For \(username)")
                .bold()
                .font(.title)
            
            Spacer()
            HStack(spacing: 16){
                Image(systemName: "airplayvideo")
                Image(systemName: "magnifyingglass")
            }.font(.title2)
        }
        
        
        
    }
    
}


struct moviCategoriesButton: View {
    var buttonText:String
    var body: some View{
        
        Button{} label: {
            HStack {
                Text(buttonText)
                    .font(.callout)
                Image(systemName: "chevron.down")
                    .font(.callout)
                
            }
            .frame(height: 32)
            .padding(.horizontal,12)
            .foregroundColor(.gray)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(.white, lineWidth: 0.5)
            )
            
        }
        
        
    }}

struct customTabBar: View {
    @Binding var isSelected:String
    var imageName:String
    var textBody:String
    var animation: Namespace.ID
    
    var body: some View{
        Button{
            isSelected = imageName
        } label: {
            VStack(spacing: 16){
                VStack {
                    Image(systemName: imageName)
                        .font(.title)
                    Text (textBody)
                }.foregroundColor(.primary)
                
                
                
                if isSelected == imageName {
                    Rectangle()
                        .frame( width: 80 , height: 2)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.red)
//                        .matchedGeometryEffect(id: "Tab", in: animation)
                } else {
                    Rectangle()
                        .frame( width: 80 , height: 2)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.clear)
                }
            }
        }
    }
}
