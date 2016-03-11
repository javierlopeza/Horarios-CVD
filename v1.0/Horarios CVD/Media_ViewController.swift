//
//  Media_ViewController.swift
//  Horarios CVD
//
//  Created by Javier López Achondo on 10-03-16.
//  Copyright © 2016 Javier López Achondo. All rights reserved.
//

import Foundation
import UIKit

class Media_ViewController: UIViewController {
    
    var receivedString = ""
    
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
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "1med") || (segue.identifier == "2med") {
            let destViewController = segue.destinationViewController as! CuatroLetras_ViewController
            destViewController.receivedString = "\(receivedString)\(segue.identifier! as String)"
        }
        
        else if (segue.identifier == "3med") || (segue.identifier == "4med"){
            let destViewController = segue.destinationViewController as! CincoLetras_ViewController
            destViewController.receivedString = "\(receivedString)\(segue.identifier! as String)"
        }
    }
}