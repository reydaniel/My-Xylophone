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
    
    @IBAction func keyPressed(_ sender: UIButton) {
//        print("Playing note \(sender.currentTitle!)")
        
        //when tapped, set alpha or opacity to 0.7
        sender.alpha = 0.7
        playNote(noteName: sender.currentTitle!)
        
        //set delay within 0.2s before set the opacity back to 1
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1
//            print("End")
        }
    }
    func playNote(noteName: String) {
        let url = Bundle.main.url(forResource: noteName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

