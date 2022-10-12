//
//  StartViewController.swift
//  HW 2.4
//
//  Created by Евгений Д on 12.10.2022.
//



// Алексей, скажи пожалуйста какие лекции пересмотреть что бы понять, как сделать это задание?
// За 8 часов я не смог разобраться как передать и раздербанить цвет. Это расстраивает. Я не понимаю чего я не понимаю.

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



