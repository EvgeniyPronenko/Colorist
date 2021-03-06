//
//  ViewController.swift
//  Colorist
//
//  Created by Евгений on 22.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redCount: UILabel!
    @IBOutlet weak var greenCount: UILabel!
    @IBOutlet weak var blueCount: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 20
        setViewColor()
    }
    
    @IBAction func setRedCount() {
        setViewColor()
        setLabelCount(label: redCount, slider: redSlider)
    }
    @IBAction func setGreenCount() {
        setViewColor()
        setLabelCount(label: greenCount, slider: greenSlider)
    }
    @IBAction func setBlueCount() {
        setViewColor()
        setLabelCount(label: blueCount, slider: blueSlider)
    }
    
    private func setViewColor() {
        colorView.backgroundColor = UIColor(
            displayP3Red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        
    }
    
    private func setLabelCount (label: UILabel, slider: UISlider) {
        label.text = String(format: "%0.2f", slider.value)
    }
}

