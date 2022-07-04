//
//  ViewController.swift
//  ElementQuiz
//
//  Created by Rambod Azimi on 6/13/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateElement()
        // Do any additional setup after loading the view.
    }
    
    let elements = ["Carbon" , "Gold" , "Chlorine" , "Sodium"]
    var elementIndex = 0

    @IBOutlet weak var imageView: UIImageView!
    
    
    
    @IBOutlet weak var answerLabel: UILabel!
    
    func updateElement(){
        answerLabel.text = "?"
        let elementName = elements[elementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel.text = elements[elementIndex]
    }
    
    @IBAction func nextElement(_ sender: UIButton) {
        elementIndex += 1
        elementIndex = elementIndex % 4
        updateElement()
    }
    
}

