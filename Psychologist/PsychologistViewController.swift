//
//  ViewController.swift
//  Psychologist
//
//  Created by Murty Gudipati on 3/1/15.
//  Copyright (c) 2015 Murty Gudipati. All rights reserved.
//

import UIKit

class PsychologistViewController: UIViewController
{
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var destination = segue.destinationViewController as? UIViewController
        if let nc = destination as? UINavigationController {
            destination = nc.visibleViewController
        }
        if let hvc = destination as? HappinessViewController {
            if let identifier = segue.identifier {
                switch identifier {
                    case "sad": hvc.happiness = 0
                    case "happy": hvc.happiness = 100
                    default: hvc.happiness = 50
                }
            }
        }
    }
}

