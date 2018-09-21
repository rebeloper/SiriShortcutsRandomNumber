//
//  ViewController.swift
//  SiriShortcutsRandomNumber
//
//  Created by Alex Nagy on 21/09/2018.
//  Copyright © 2018 Alex Nagy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  @IBOutlet weak var label: UILabel!
  
  @IBAction func tappedButton(_ sender: Any) {
    generateRandomNumber()
  }
  
  func generateRandomNumber() {
    let randomNumber = Int.random(in: 1...100)
    label.text = "\(randomNumber)"
    
    createUserActivity()
    
    print("Generated random number: \(randomNumber)")
  }
  
  func createUserActivity() {
    
    let activity = NSUserActivity(activityType: UserActivityType.GenerateRandomNumber)
    
    activity.title = "Generate Random Number"
    activity.isEligibleForSearch = true
    activity.isEligibleForPrediction = true
    
    self.userActivity = activity
    self.userActivity?.becomeCurrent()
    
  }
}






















