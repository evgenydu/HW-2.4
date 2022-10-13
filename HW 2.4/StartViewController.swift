//
//  StartViewController.swift
//  HW 2.4
//
//  Created by Евгений Д on 12.10.2022.
//

import UIKit

class StartViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.8, green: 0.4, blue: 0.3, alpha: 1)
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.settingsColor = view.backgroundColor
    }
    
}



