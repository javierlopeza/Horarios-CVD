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
    
    var BGImageNumber = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Se elije un numero random de foto.
        BGImageNumber = Int(arc4random_uniform(30) + 1)
        BGImage.image = UIImage(named: "\(BGImageNumber)")
        
    }

    @IBAction func DescargarPressed(sender: AnyObject) {
        UIImageWriteToSavedPhotosAlbum(UIImage(named: "\(BGImageNumber)")!, nil, nil, nil)
    }
}

