//
//  ViewController.swift
//  cup-timer
//
//  Created by ikeyuji on 2020/11/02.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var timerText: UILabel!
    
    var timeSecond: Int = 0

    @IBAction func timeSelected(_ sender: UIButton) {

        let timeMinute = sender.currentTitle!

        timeSecond = Int(timeMinute)! * 60
        timerText.text = String(timeSecond)

        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeUpdate), userInfo: nil, repeats: true)

    }
            
    @objc func timeUpdate(){
        
        timeSecond -= 1
        timerText.text = String(timeSecond)

    }
    
    
    
}

