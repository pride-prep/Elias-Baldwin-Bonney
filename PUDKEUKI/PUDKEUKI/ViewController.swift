//
//  ViewController.swift
//  PUDKEUKI
//
//  Created by Student on 5/17/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lesson1Progress: UIProgressView!
    @IBOutlet weak var incorrectLesson1: UILabel!
    @IBOutlet weak var questionsLesson1: UILabel!
    @IBOutlet weak var Choice1Lesson: UIButton!
    @IBOutlet weak var Choice2Lesson: UIButton!
    @IBOutlet weak var Choice3Lesson: UIButton!
    @IBOutlet weak var Choice4Lesson: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func startLesson(number: Int) {
        if number == 1{
            incorrectLesson1.textColor = UIColor.red
            incorrectLesson1.text = "INCORRECT"
            lesson1Progress.progress = lesson1Progress.progress - 0.1
        }
        if number == 2{
            incorrectLesson1.textColor = UIColor.green
            incorrectLesson1.text = "CORRECT"
            lesson1Progress.progress = lesson1Progress.progress + 0.1
        }
    }
    
    @IBAction func lippaButton(_ sender: Any) {
        startLesson(number: 2)
    }
    @IBAction func nezkibButton(_ sender: Any) {
        startLesson(number: 1)
    }
    @IBAction func pudkeukiButton(_ sender: Any) {
        startLesson(number: 1)
    }
    @IBAction func kaatfiButton(_ sender: Any) {
        startLesson(number: 1)
    }
}

