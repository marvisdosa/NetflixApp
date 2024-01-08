//
//  netflixModel.swift
//  lessons
//
//  Created by Marvis Ighedosa on 23/09/2023.
//

import Foundation

struct movieDetails: Hashable {
    var posterImage:String
    var movieName:String
    var movieRating:String
    var movieDesc:String
    var TrailerMovie:String
    var moviePosition: Int
}

let allMoviews =
[
    movieDetails(posterImage: "BirdBox", movieName: "Fast X", movieRating: "7.5/10", movieDesc: "Queen Ramonda, Shuri, M'Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T'Challa's death. As the Wakandans strive to embrace their next chapter, the heroes must band together with Nakia and Everett Ross to forge a new path for their beloved kingdom.", TrailerMovie: "https://esdiacapp.s3.amazonaws.com/videos/introduction-to-esdiac.mp4", moviePosition: 1),
    movieDetails(posterImage: "Luther", movieName: "John Wick: The reveng", movieRating: "9/10", movieDesc: "Over many missions and against impossible odds, Dom Toretto and his family have outsmarted and outdriven every foe in their path. Now, they must confront the most lethal opponent they've ever faced. Fueled by revenge, a terrifying threat emerges from the shadows of the past to shatter Dom's world and destroy everything -- and everyone -- he loves.", TrailerMovie: "http://d6.o2tv.org/Miracle%20Workers/Season%2001/Miracle%20Workers%20-%20S01E01%20HD%20(TvShows4Mobile.Com).mp4", moviePosition: 2),
    movieDetails(posterImage: "StrangerThings", movieName: "SpiderMan No WayHome", movieRating: "8.9/10", movieDesc: "Over many missions and against impossible odds, Dom Toretto and his family have outsmarted and outdriven every foe in their path. Now, they must confront the most lethal opponent they've ever faced. Fueled by revenge, a terrifying threat emerges from the shadows of the past to shatter Dom's world and destroy everything -- and everyone -- he loves.", TrailerMovie: "http://d6.o2tv.org/Miracle%20Workers/Season%2001/Miracle%20Workers%20-%20S01E01%20HD%20(TvShows4Mobile.Com).mp4", moviePosition: 3),
    movieDetails(posterImage: "You", movieName: "Sonic the Hedgehog", movieRating: "8.5/10", movieDesc: "Over many missions and against impossible odds, Dom Toretto and his family have outsmarted and outdriven every foe in their path. Now, they must confront the most lethal opponent they've ever faced. Fueled by revenge, a terrifying threat emerges from the shadows of the past to shatter Dom's world and destroy everything -- and everyone -- he loves.", TrailerMovie: "http://d6.o2tv.org/Miracle%20Workers/Season%2001/Miracle%20Workers%20-%20S01E01%20HD%20(TvShows4Mobile.Com).mp4", moviePosition: 4),
    movieDetails(posterImage: "youngSheldon", movieName: "Transformer", movieRating: "8.5/10", movieDesc: "Over many missions and against impossible odds, Dom Toretto and his family have outsmarted and outdriven every foe in their path. Now, they must confront the most lethal opponent they've ever faced. Fueled by revenge, a terrifying threat emerges from the shadows of the past to shatter Dom's world and destroy everything -- and everyone -- he loves.", TrailerMovie: "http://d6.o2tv.org/Miracle%20Workers/Season%2001/Miracle%20Workers%20-%20S01E01%20HD%20(TvShows4Mobile.Com).mp4", moviePosition: 5)
]



 func shuffleArray() -> [String]  {
    let allMoviePosters = ["youngSheldon","You","StrangerThings","Luther","BirdBox","greyMan","GlassOnion"]
     return allMoviePosters.shuffled()
}
