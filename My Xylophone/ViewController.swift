//
//  ViewController.swift
//  My Xylophone
//
//  Created by ReyDaniel on 30/03/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
        }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        print("Playing note \(sender.currentTitle!)")
        sender.alpha = 0.7
        playNote(noteName: sender.currentTitle!)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1
            print("End")
        }
    }
    func playNote(noteName: String) {
        let url = Bundle.main.url(forResource: noteName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

