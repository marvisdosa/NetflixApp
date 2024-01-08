//
//  movieDetail.swift
//  MetflixApp
//
//  Created by Marvis Ighedosa on 11/11/2023.
//

import SwiftUI
import AVKit

struct movieDetail: View {
    //    @State var avPlayer:AVPlayer?
    //    @State var url = "https://esdiacapp.s3.amazonaws.com/videos/introduction-to-esdiac.mp4"
    //
    @State var current = "plus"
    @Namespace var animation
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    @State var isPresented:Bool = false

    
    var body: some View {
        ScrollView{
            VStack(spacing: 24){
                videoImage
                movieDetailsTexts
                VStack {
                    primaryButtonPlay
                    secodnaryButtonPlay
                }
                Text("Grieving the loss of a best friend she couldn't protect, ex-bodyguard Ok-ju sets out to fulfill her dear friend's last wish: sweet, sweet revenge.")
                    .font(.caption2)
                    .foregroundColor(.secondary)
                HStack{
                    customTabBar(isSelected: $current, imageName: "plus", textBody: "Add List", animation: animation)
                    customTabBar(isSelected: $current, imageName: "hand.thumbsup", textBody: "Rate", animation: animation)
                    customTabBar(isSelected: $current, imageName: "square.and.arrow.up", textBody: "Share", animation: animation)
                }
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(shuffleArray(), id: \.self) { video in
                        Image(video)
                            .resizable()
                            .scaledToFill()
                            .padding(16)
                            .frame(width: 160, height: 200, alignment: .top)
                            .cornerRadius(12)
                    }
                }
            }
        }
        .scrollIndicators(.hidden)
        .padding()
        .preferredColorScheme(.dark)
    }
}

struct movieDetail_Previews: PreviewProvider {
    static var previews: some View {
        movieDetail()
    }
}

extension movieDetail {
    private var videoImage: some View {
        ZStack{
            Image("YSVideoThumbnail")
                .resizable()
                .scaledToFill()
                .frame(width: 400, height: 280)
                .cornerRadius(16)
                .onTapGesture {
                    isPresented = true
                }
                .fullScreenCover(isPresented: $isPresented, content: {
                    playMovie()
                })
                .overlay(alignment: .topTrailing){
                    HStack{
                        Circle()
                            .fill(.thinMaterial)
                            .frame(width: 28, height: 28)
                            .overlay{
                                Image(systemName: "square.and.arrow.up")
                                    .font(.footnote)
                            }
                        Circle()
                            .fill(.thinMaterial)
                            .frame(width: 28, height: 28)
                            .overlay{
                                Image(systemName: "xmark")
                                    .font(.footnote)
                            }
                    }
                    .padding()
                    
                }
            Circle()
                .strokeBorder(Color.white.opacity(0.3),lineWidth: 1)
                .background(Circle().fill(.ultraThinMaterial))
            
                .frame(width: 56, height: 56)
                .overlay{
                    Image(systemName: "play.fill")
                }
            HStack{
                Image(systemName: "tv.badge.wifi.fill")
            }
            
        }
    }
    
    private var movieDetailsTexts: some View {
        VStack(spacing: 8) {
            HStack{
                Image("Metflixlogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 56, height: 56)
                Text("FILM")
                    .foregroundColor(.white)
                    .tracking(16)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("Movie Name")
                .font(.title)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack(spacing: 16){
                Text("New")
                    .font(.headline)
                    .foregroundColor(.green)
                Text("#6 in Movies today")
                Text("2023")
                    .fontWeight(.bold)
            }
            .foregroundColor(.secondary)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            
        }
    }
    
    private var primaryButtonPlay: some View {
        HStack{
            Image(systemName: "play.fill")
                .foregroundColor(.black)
            Text("Play")
                .foregroundColor(.black)
        }
        .font(.title3)
        .fontWeight(.bold)
        .foregroundColor(.black)
        .padding()
        .frame(width: 320 , height: 56)
        .frame(maxWidth: .infinity)
        .background(Color.primary)
        .cornerRadius(12)
    }
    
    
    
    private var secodnaryButtonPlay: some View {
        
        HStack{
            Image(systemName: "arrow.down")
            Text("Download")
        }
        .font(.title3)
        .fontWeight(.bold)
        .foregroundColor(.black)
        .padding()
        .frame(width: 320 , height: 56)
        .frame(maxWidth: .infinity)
        .background(Color.primary)
        .cornerRadius(12)
    }
    
    
    
    
}
