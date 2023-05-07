//
//  ViewControllerbai2.swift
//  baitapvenha6
//
//  Created by USER on 06/05/2023.
//

import UIKit

class ViewControllerbai2: UIViewController {
    
    @IBOutlet weak var randomimage: UIButton!
  
    @IBOutlet weak var imageView: UIImageView!
    let image = [UIImage(named: "1"),
                 UIImage(named: "2"),
                 UIImage(named: "3"),
                 UIImage(named: "4"),
                 UIImage(named: "5"),
                 UIImage(named: "6"),
                 UIImage(named: "7"),
                 UIImage(named: "8"),
                 UIImage(named: "9"),
                 UIImage(named: "10"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomimage.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ClickButton(_ sender: UIButton) {
        
        let curentimage = imageView.image
        var randomimage = image.randomElement()
        while curentimage == randomimage {
            randomimage = image.randomElement()
        }
        if curentimage != randomimage
        {
            imageView.image = randomimage!!
        }
    }
}
