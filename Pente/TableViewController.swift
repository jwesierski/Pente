//
//  TableViewController.swift
//  Pente
//
//  Created by Beverly Harris on 12/13/20.
//

import UIKit
import SwiftUI
import AVKit
import AVFoundation

class TableViewController: UITableViewController {
    var audioPlayer: AVAudioPlayer!
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBAction func hitBtn(_ sender: Any) {
        UIScrollView.animate(withDuration: 15, animations: {
        self.scrollView.contentOffset = CGPoint(x: 0, y: 1200) })
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
