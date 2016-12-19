//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Nancy Cao on 12/18/16.
//  Copyright © 2016 Nancy Cao. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var control: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = UserDefaults.standard
        control.selectedSegmentIndex = defaults.integer(forKey: "percent")
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changed(_ sender: Any) {
        let defaults = UserDefaults.standard
        let defTipIndex = control.selectedSegmentIndex
        defaults.set(defTipIndex, forKey: "percent")
        // Force UserDefaults to save.
        defaults.synchronize()
        print("def changed to")
        print (defTipIndex)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
