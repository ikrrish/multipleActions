//
//  ViewController2.swift
//  multipleActions
//
//  Created by R82 on 27/03/23.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var lb: UILabel!
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var segment: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        lb.text = "0"
        switch1.isOn = false
        indicator.stopAnimating()
        indicator.hidesWhenStopped = true
    }
    @IBAction func switchAction(_ sender: Any) {
        if switch1.isOn == true{
            indicator.startAnimating()
        view.backgroundColor = .darkGray
        }
        else{
        view.backgroundColor = .white
            indicator.stopAnimating()
        }
    }
    
    @IBAction func segmentAction(_ sender: Any) {
        if segment.selectedSegmentIndex == 0{
        view.backgroundColor = .red
        }
        else if segment.selectedSegmentIndex == 1{
        view.backgroundColor = .blue
        }
    }
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        lb.text = Int(stepper.value).description
    }
}
