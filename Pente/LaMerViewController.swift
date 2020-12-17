//
//  LaMerViewController.swift
//  Pente
//
//  Created by Jack Michael Wesierski on 12/17/20.
//

import UIKit

import SwiftUI
import AVKit
import AVFoundation

class LaMerViewController: UIViewController {
    var audioPlayer: AVAudioPlayer!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBAction func hitBtn(_ sender: Any) {
        UIScrollView.animate(withDuration: 10, animations: {
        self.scrollView.contentOffset = CGPoint(x: 0, y: 1000) })
        if let soundURL = Bundle.main.url(forResource: "laMer", withExtension: "mp3") {
                
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
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
