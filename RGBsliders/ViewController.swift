//
//  ViewController.swift
//  RGBsliders
//
//  Created by Andrey on 10.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redGradationLabel: UILabel!
    @IBOutlet weak var greenGradationLabel: UILabel!
    @IBOutlet weak var blueGradationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradationLabels()
        changeColor()
        redSlider.tintColor = .red
        greenSlider.tintColor = .green
        colorView.layer.cornerRadius = 15
    }
    
     func setGradationLabels() {
        redGradationLabel.text = String(format: "%.2f", redSlider.value)
        greenGradationLabel.text = String(format: "%.2f", greenSlider.value)
        blueGradationLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
     func changeColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value),
                                            alpha: 1)
    }
    
    @IBAction func rgbSlidersAction() {
        changeColor()
        setGradationLabels()
    }
    
    
}




