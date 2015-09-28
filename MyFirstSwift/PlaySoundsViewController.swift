//
//  PlaySoundsViewController.swift
//  MyFirstSwift
//
//  Created by Nicholas Allio on 24/09/15.
//  Copyright © 2015 Nicholas Allio. All rights reserved.
//

import UIKit
import AVFoundation


class PlaySoundsViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!
    var receivedAudio:RecordedAudio!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        audioPlayer = try! AVAudioPlayer(contentsOfURL: receivedAudio.filePathUrl)
        audioPlayer.enableRate = true
    }
    
    @IBAction func playSlow(sender: UIButton) {
        playAudio(0.5)
    }
    
    @IBAction func playFast(sender: UIButton) {
        playAudio(1.5)
    }
    
    @IBAction func stopSound(sender: UIButton) {
        audioPlayer.stop()
    }
    
    func playAudio(atRate: Float) {
        audioPlayer.stop()
        audioPlayer.rate = atRate
        audioPlayer.currentTime = 0.0
        audioPlayer.play()
    }
    
}


