//
//  ViewController.swift
//  Cat and Dog
//
//  Created by Auto on 1/8/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var photoDsplay: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func caButton(_ sender: UIButton) {
        photoDsplay.image = #imageLiteral(resourceName: "Cat")
        
    }
    
    @IBAction func dogButton(_ sender: Any) {
        photoDsplay.image = #imageLiteral(resourceName: "Dog")
    
    }
    
}

