//
//  ViewController.swift
//  Tally
//
//  Created by Jordan Fraughton on 2/13/24.
//

import UIKit

class StepperViewController: UIViewController {
    var tallyCount = 0
    var countBy = 1

    @IBOutlet var tallyLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsTableViewController else { return }
        settingsVC.delegate = self
    }

    @IBAction func addButtonTapped(_ sender: Any) {
        tallyCount += countBy
        tallyLabel.text = String(tallyCount)
    }
    @IBAction func subtractbuttontapped(_ sender: Any) {
        tallyCount -= countBy
        tallyLabel.text = String(tallyCount)
    }
}

