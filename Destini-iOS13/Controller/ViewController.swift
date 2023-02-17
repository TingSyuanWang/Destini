//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var stroyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let answer = sender.currentTitle!
        stroyBrain.nextStory(userChoice: answer)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = stroyBrain.getTitle()
        choice1Button.setTitle(stroyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(stroyBrain.getChoice2(), for: .normal)
    }
    
}

