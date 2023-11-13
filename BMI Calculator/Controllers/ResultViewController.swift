//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by BURCAKER on 11.11.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    var adviceLabelText: String?
    var backgorundColorFromModel: UIColor?
    
    @IBOutlet weak var backgroundColorImage: UIImageView!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = adviceLabelText
        backgroundColorImage.backgroundColor = backgorundColorFromModel

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatorPressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
