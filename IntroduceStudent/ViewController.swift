//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Dhruv Phansalkar on 2/4/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var schoolName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var firstName: UITextField!
    
    
    @IBOutlet weak var noOfPets: UILabel!
    @IBOutlet weak var yearSegmentSelector: UISegmentedControl!
    
    @IBOutlet weak var morePetStepper: UIStepper!
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        
        let year = yearSegmentSelector.titleForSegment(at: yearSegmentSelector.selectedSegmentIndex)
        
        let introduction = "My name is is \(firstName.text!) \(lastName.text!) and I attend \(schoolName.text!). I am currently in my \(year!) year and I own \(noOfPets.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
        
        
    }
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        noOfPets.text = "\(Int(sender.value))"
    }
}

