//
//  ViewController.swift
//  hie
//
//  Created by Student on 4/24/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Textcolor: UIButton!
    @IBOutlet weak var Fullchange2: UIButton!
    @IBOutlet weak var colorChange: UIButton!
    @IBOutlet weak var helloWorld: UILabel!
    @IBOutlet weak var playButton: UIButton!
    var index = 0;
    
    let list = [UIColor.blue, UIColor.green, UIColor.magenta]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        colorChange.isHidden = true;
        helloWorld.isHidden = true;
        Textcolor.isHidden = true;
        Fullchange2.isHidden = true;
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
        colorChange.isHidden = true;
        Fullchange2.isHidden = false;
    }
    @IBAction func fullChange2(_ sender: Any) {
        helloWorld.text = "COLOR CHANGER"
        Fullchange2.isHidden = true;
        Textcolor.isHidden = false;
    }
    @IBAction func textColor(_ sender: Any) {
        helloWorld.backgroundColor = list[index]
        index = (index + 1) % list.count;
    }

}

