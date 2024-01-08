import AVKit
import SwiftUI


struct playMovie: View {
    @State var player = AVPlayer()
    var url = "https://esdiacapp.s3.amazonaws.com/videos/introduction-to-esdiac.mp4"
    
    var body: some View {
        VideoPlayer(player: player)
            .ignoresSafeArea()
            .onAppear{
                player = AVPlayer(url: URL(string: url)!)
            }
    }
}

struct playMovie_Previews: PreviewProvider {
    static var previews: some View {
        playMovie()
    }
}
