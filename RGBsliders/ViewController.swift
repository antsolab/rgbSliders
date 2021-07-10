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
        gradiationLabels()
        colorView.layer.cornerRadius = 10
        changeColor()
    }
    
    func gradiationLabels() {
        redGradationLabel.text = String(redSlider.value)
        greenGradationLabel.text = String(greenSlider.value)
        blueGradationLabel.text = String(blueSlider.value)
    }
    
    func changeColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value),
                                            alpha: 1)
    }
    
    
    
    @IBAction func rgbView() {
        changeColor()
        gradiationLabels()
    }
    

}

