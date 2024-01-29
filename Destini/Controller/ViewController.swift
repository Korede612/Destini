//
//  ViewController.swift
//  Destini
//
//  Created by Oko-osi Korede on 29/01/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var firstChoiceButton: UIButton!
    @IBOutlet weak var secondChoiceButton: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceSelected(_ sender: UIButton) {
        print("Your choice is: \(sender.currentTitle ?? "")")
        guard let userChoice = sender.currentTitle else { return }
        storyBrain.nextStory(userChoice: userChoice)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStory()
        firstChoiceButton.setTitle(storyBrain.getChoice(btn: .first), for: .normal)
        secondChoiceButton.setTitle(storyBrain.getChoice(btn: .second), for: .normal)
    }
}

