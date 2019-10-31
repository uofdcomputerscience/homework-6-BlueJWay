//
//  ViewController.swift
//  Homework6
//
//  Created by Russell Mirabelli on 10/26/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segmentedController: UISegmentedControl!
    @IBOutlet var selectionSwitch: UISwitch!
    @IBOutlet var selectionButton: UIButton!
    @IBOutlet var continueButton: UIButton!
    var second = false
    var switched = false
    var pushed = false
    
    @IBAction func segmentedControllerDidChangeValue(_ sender: UISegmentedControl) {
        continueButtonAvailable()
    }
    
    @IBAction func selectionSwitchDidChangeValue(_ sender: UISwitch) {
        continueButtonAvailable()
    }
    
    @IBAction func selectionButtonTapped(_ sender: UIButton) {
        selectionButton.isSelected.toggle()
        continueButtonAvailable()
    }
    func continueButtonAvailable() {
        if(segmentedController.selectedSegmentIndex == 1 && selectionSwitch.isOn && selectionButton.isSelected){
            continueButton.isEnabled = true
        }else{
            continueButton.isEnabled = false
        }
}
}

