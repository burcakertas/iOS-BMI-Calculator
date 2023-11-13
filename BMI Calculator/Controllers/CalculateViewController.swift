//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Burcak Ertas on 13/08/2023.
//  Copyright © 2023 Burcak  Ertas. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String(format: "%.0f", sender.value) + "kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let heightValue = heightSlider.value
        let weightValue = weightSlider.value
        calculatorBrain.calculateBMI(heightValue: heightValue, weightValue: weightValue)
        
        //navigator. identifier-> stroryboardda iki sayfa arasındaki okun identifierı. sender-> who will be the initiator of the segue.
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            let result = calculatorBrain.getBackgorundColorAndAdviceText(bmiValue: destinationVC.bmiValue ?? "0.0")
            destinationVC.backgorundColorFromModel = result.0
            destinationVC.adviceLabelText = result.1
        }
    }
}

