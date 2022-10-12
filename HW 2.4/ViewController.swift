//
//  ViewController.swift
//  HW 2.4
//
//  Created by Евгений Д on 25.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var viewMain: UIView!
    @IBOutlet var valueRed: UILabel!
    @IBOutlet var valueGreen: UILabel!
    @IBOutlet var valueBlue: UILabel!
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewMain.layer.cornerRadius = 10
        setColor()
        setValue()
    }
    
    @IBAction func setupSliderValue(_ sender: UISlider) {
        setColor()
        switch sender {
        case sliderRed:
            valueRed.text = string(from: sender)
        case sliderGreen:
            valueGreen.text = string(from: sender)
        default:
            valueBlue.text = string(from: sender)
        }
    }
    
    private func setColor() {
        viewMain.backgroundColor = UIColor(
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: 1
        )
    }
    
    private func setValue() {
        valueRed.text = string(from: sliderRed)
        valueGreen.text = string(from: sliderGreen)
        valueBlue.text = string(from: sliderBlue)
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%0.2f", slider.value)
    }
}

