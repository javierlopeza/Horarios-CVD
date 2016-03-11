//
//  5Letras_ViewController.swift
//  Horarios CVD
//
//  Created by Javier López Achondo on 10-03-16.
//  Copyright © 2016 Javier López Achondo. All rights reserved.
//

import Foundation
import UIKit

class CincoLetras_ViewController: UIViewController {
    
    var receivedString = ""
    
    @IBOutlet var BGImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        BGImage.image = UIImage(named: "\(Int(arc4random_uniform(3) + 1))")
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if ((segue.identifier?.containsString("bas")) != nil) || ((segue.identifier?.containsString("med")) != nil) {
        
        let destViewController = segue.destinationViewController as! Horario_ViewController
        destViewController.receivedString = "\(receivedString)\(segue.identifier! as String)"
        
        }
    }
    
}