//
//  ViewController.swift
//  baitapvenha6
//
//  Created by USER on 06/05/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var clickButton: UIButton!
    
    let color = [UIColor.yellow, UIColor.blue, UIColor.gray, UIColor.black, UIColor.red]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        clickButton.layer.cornerRadius = 8
        
    }
    
    @IBAction func ClickButton(_ sender: Any) {
        let currentColor = view.backgroundColor
        var randomcolor = color.randomElement()
        while currentColor == randomcolor {
            randomcolor = color.randomElement()
        }
        
        if view.backgroundColor != randomcolor {
            view.backgroundColor = randomcolor
        }
    }
}

