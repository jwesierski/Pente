//
//  ContentView.swift
//  Pente
//
//  Created by Jack Michael Wesierski on 12/10/20.
//

import SwiftUI
import AVKit

struct ContentView: View {
    var body: some View {
        VStack {
            player().frame(height: UIScreen.main.bounds.height / 3)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct player : UIViewControllerRepresentable {
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<player>) -> AVPlayerViewController{
        let controller = AVPlayerViewController()
        let url = "https://www.youtube.com/watch?v=lrlQR_KH_nw"
        let player1 = AVPlayer(url: URL(string: url)!)
        //the code had me add the exclamation at the end of line 31 in case the value was null. I believe it's becuase of the url link and I copied the url instead of the video link. See if that can be changed
        controller.player = player1
        return controller
    }
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: UIViewControllerRepresentableContext<player>) {
    
    }
}
