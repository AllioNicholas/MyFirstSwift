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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton) {
        recLabel.hidden = false
    }

    @IBAction func stopRecord(sender: UIButton) {
        recLabel.hidden = true
    }
}

