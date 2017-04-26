//
//  ViewController.swift
//  hie
//
//  Created by Student on 4/24/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorChange: UIButton!
    @IBOutlet weak var helloWorld: UILabel!
    @IBOutlet weak var playButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        colorChange.isHidden = true;
        helloWorld.isHidden = true;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func PlayButton(_ sender: Any) {
        helloWorld.isHidden = false;
        playButton.isHidden = true;
        colorChange.isHidden = false;
        
    }
    @IBAction func fullChange(_ sender: Any) {
        helloWorld.text = "I CHANGE COLOR";
        helloWorld.textColor = UIColor.magenta;
    }

}

