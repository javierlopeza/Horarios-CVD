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
    
    @IBOutlet var BackButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tapGestureRecognizer = UITapGestureRecognizer(target:self, action:Selector("imageTapped:"))
        HorarioImageView.userInteractionEnabled = true
        HorarioImageView.addGestureRecognizer(tapGestureRecognizer)
        
        let tosendString = receivedString
        
        HorarioImageView.image = UIImage(named: tosendString)
    }
    
    func imageTapped(img: AnyObject) {
        if BackButton.hidden == true {
            BackButton.hidden = false
        }
        else {
            BackButton.hidden = true
        }
        
        
    }
}