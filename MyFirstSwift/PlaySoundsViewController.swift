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
    var audioEngine:AVAudioEngine!
    var audioFile:AVAudioFile!

    override func viewDidLoad() {
        super.viewDidLoad()

        audioPlayer = try! AVAudioPlayer(contentsOfURL: receivedAudio.filePathUrl)
        audioPlayer.enableRate = true

        audioEngine = AVAudioEngine()
        audioFile = try! AVAudioFile(forReading: receivedAudio.filePathUrl)
    }

    @IBAction func playSlow(sender: UIButton) {
        stopAndResetCurrentAudio()
        playAudio(0.5)
    }

    @IBAction func playFast(sender: UIButton) {
        stopAndResetCurrentAudio()
        playAudio(1.5)
    }

    @IBAction func stopSound(sender: UIButton) {
        stopAndResetCurrentAudio()
    }

    @IBAction func playChipmunkAudio(sender: UIButton) {
        playAudioWithVariablePitch(1000)
    }

    @IBAction func playDarthvaderAudio(sender: UIButton) {
        playAudioWithVariablePitch(-1000)
    }

    func stopAndResetCurrentAudio() {
        audioPlayer.stop()
        audioEngine.stop()
        audioEngine.reset()
    }

    func playAudioWithVariablePitch(pitch: Float){
        stopAndResetCurrentAudio()

        let audioPlayerNode = AVAudioPlayerNode()
        audioEngine.attachNode(audioPlayerNode)

        let changePitchEffect = AVAudioUnitTimePitch()
        changePitchEffect.pitch = pitch
        audioEngine.attachNode(changePitchEffect)

        audioEngine.connect(audioPlayerNode, to: changePitchEffect, format: nil)
        audioEngine.connect(changePitchEffect, to: audioEngine.outputNode, format: nil)

        audioPlayerNode.scheduleFile(audioFile, atTime: nil, completionHandler: nil)
        try! audioEngine.start()

        audioPlayerNode.play()
    }

    func playAudio(atRate: Float) {
        audioPlayer.stop()
        audioPlayer.rate = atRate
        audioPlayer.currentTime = 0.0
        audioPlayer.play()
    }

}
