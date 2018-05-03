//
//  WorkoutVC.swift
//  WorkIt
//
//  Created by Dan Lindsay on 2018-05-02.
//  Copyright © 2018 Dan Lindsay. All rights reserved.
//

import UIKit
import Intents

class WorkoutVC: UIViewController {

    @IBOutlet weak var workoutTypeLbl: UILabel!
    @IBOutlet weak var timerLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        workoutTypeLbl.isHidden = true
        timerLbl.isHidden = true
        
        NotificationCenter.default.addObserver(self, selector: #selector(handleSiriRequest), name: NSNotification.Name("workoutStartedNotification"), object: nil)
        
        INPreferences.requestSiriAuthorization { (status) in
            if status == INSiriAuthorizationStatus.authorized {
                print("SiriKit: Authorized")
            } else {
                print("SiriKit: Unauthorized")
            }
        }
    }
    
    @objc func handleSiriRequest() {
        guard let intent = DataService.instance.startWorkoutIntent, let goalValue = intent.goalValue, let workoutType = intent.workoutName?.spokenPhrase else {
            timerLbl.isHidden = true
            workoutTypeLbl.isHidden = true
            return
        }
        
        workoutTypeLbl.isHidden = false
        timerLbl.isHidden = false
        workoutTypeLbl.text = "TYPE: \(workoutType.capitalized)"
        timerLbl.text = "\(goalValue.convertToClockTime()) LEFT"
        
        
    }


}

