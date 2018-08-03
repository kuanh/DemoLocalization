//
//  ViewController.swift
//  Demo1
//
//  Created by Developer on 8/3/18.
//  Copyright © 2018 Developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var salaryLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = Strings.NAME.localized
        salaryLabel.text = Strings.SALARY.localized
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func english(_ sender: UIButton) {
        UserDefaults.standard.set("Base", forKey: "locale")
        nameLabel.text = Strings.NAME.localized
        salaryLabel.text = Strings.SALARY.localized
    }
    @IBAction func vietnamese(_ sender: UIButton) {
        UserDefaults.standard.set("vi", forKey: "locale")
        nameLabel.text = Strings.NAME.localized
        salaryLabel.text = Strings.SALARY.localized
    }
    
}

