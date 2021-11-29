//
//  ViewController.swift
//  UIKitApp
//
//  Created by Андрей Аверьянов on 29.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Label
        mainLabel.text = ""
        mainLabel.font = mainLabel.font.withSize(35)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
        
        // Segmented Control
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: false)
    }
    
    @IBAction func segmentedControlAction() {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            mainLabel.text = "The first segment is selected"
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = "The second segment is selected"
            mainLabel.textColor = .yellow
        case 2:
            mainLabel.text = "The third segment is selected"
            mainLabel.textColor = .blue
        default: break
        }
    }
    
}

