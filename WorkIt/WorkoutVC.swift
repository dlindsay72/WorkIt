//
//  WorkoutVC.swift
//  WorkIt
//
//  Created by Dan Lindsay on 2018-05-02.
//  Copyright © 2018 Dan Lindsay. All rights reserved.
//

import UIKit

class WorkoutVC: UIViewController {

    @IBOutlet weak var workoutTypeLbl: UILabel!
    @IBOutlet weak var timerLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        workoutTypeLbl.isHidden = true
        timerLbl.isHidden = true
    }


}

