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
        if let hvc = segue.destinationViewController as? HappinessViewController {
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

