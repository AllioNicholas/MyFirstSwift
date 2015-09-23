//
//  ViewController.swift
//  MyFirstSwift
//
//  Created by Nicholas Allio on 21/09/15.
//  Copyright © 2015 Nicholas Allio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var recLabel: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var recordButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        stopButton.hidden = true
        recordButton.enabled = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton) {
        recLabel.hidden = false
        stopButton.hidden = false
        recordButton.enabled = false
    }

    @IBAction func stopRecord(sender: UIButton) {
        recLabel.hidden = true
        stopButton.hidden = true
    }
}

