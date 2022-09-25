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
        
    }

    @IBAction func setupRedValue(_ sender: UISlider) {
        valueRed.text = sliderRed.value.formatted()
        viewMain.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
    }
    
    @IBAction func setupGreenValue(_ sender: UISlider) {
        valueGreen.text = sliderGreen.value.formatted()
        viewMain.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
    }
    
    @IBAction func setupBlueValue(_ sender: UISlider) {
        valueBlue.text = sliderBlue.value.formatted()
        viewMain.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
    }
}

