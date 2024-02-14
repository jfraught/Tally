//
//  SettingsTableViewController.swift
//  Tally
//
//  Created by Jordan Fraughton on 2/14/24.
//

import UIKit

class SettingsTableViewController: UITableViewController {

    var resetValue = 0

    weak var delegate: StepperViewController!
    
    @IBOutlet var countByLabel: UILabel!
    @IBOutlet var resetToLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countByLabel.text = String(delegate.countBy)
    }

    @IBAction func countByStepperTapped(_ sender: Any) {
        guard let stepper = sender as? UIStepper else { return }
        countByLabel.text = String(Int(stepper.value))
        delegate.countBy = Int(stepper.value)
    }
    
    @IBAction func resetToStepperTapped(_ sender: Any) {
        guard let stepper = sender as? UIStepper else { return }
        resetValue = Int(stepper.value)
        resetToLabel.text = String(resetValue)
    }
    
    @IBAction func resetButtonTapped(_ sender: Any) {
        delegate.tallyCount = resetValue
        delegate.tallyLabel.text = String(resetValue)
    }
}
