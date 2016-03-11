//
//  Horario-ViewController.swift
//  Horarios CVD
//
//  Created by Javier López Achondo on 10-03-16.
//  Copyright © 2016 Javier López Achondo. All rights reserved.
//

import Foundation
import UIKit

class Horario_ViewController: UIViewController {
    
    var receivedString = ""
    
    @IBOutlet var HorarioImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tosendString = receivedString
        
        HorarioImageView.image = UIImage(named: tosendString)
    }
    
}