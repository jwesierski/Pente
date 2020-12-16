//
//  songWordsViewController.swift
//  Pente
//
//  Created by Jack Michael Wesierski on 12/16/20.
//
import UIKit
import SwiftUI
import AVKit
import AVFoundation


class songWordsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup afte loading the view.
    }
    
    var audioPlayer: AVAudioPlayer!
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBAction func hitBtn(_ sender: Any) {
        UIScrollView.animate(withDuration: 10, animations: {
        self.scrollView.contentOffset = CGPoint(x: 0, y: 1000) })
        if let soundURL = Bundle.main.url(forResource: "frenchSongTest", withExtension: "mp3") {
                
                    do {
                        audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
                    }
                    catch {
                        print(error)
                    }
                    
                    audioPlayer.play()
                }else{
                    print("Unable to locate audio file")
                }
    }
    

}
