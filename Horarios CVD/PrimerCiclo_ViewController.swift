//
//  PrimerCiclo_ViewController.swift
//  Horarios CVD
//
//  Created by Javier López Achondo on 10-03-16.
//  Copyright © 2016 Javier López Achondo. All rights reserved.
//

import Foundation
import UIKit

class PrimerCiclo_ViewController: UIViewController {
    
    var receivedString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if ((segue.identifier?.containsString("bas")) != nil) {
            let destViewController = segue.destinationViewController as! CincoLetras_ViewController
            destViewController.receivedString = "\(receivedString)\(segue.identifier! as String)"
        }
        
        
    }
    
}