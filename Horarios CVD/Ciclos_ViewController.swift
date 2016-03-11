//
//  ViewController.swift
//  Horarios CVD
//
//  Created by Javier López Achondo on 10-03-16.
//  Copyright © 2016 Javier López Achondo. All rights reserved.
//

import UIKit

class Ciclos_ViewController: UIViewController {

    @IBOutlet var BGImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        BGImage.image = UIImage(named: "\(Int(arc4random_uniform(3) + 1))")
        
    }

}

