//
//  IntentHandler.swift
//  IntentHandler
//
//  Created by Dan Lindsay on 2018-05-02.
//  Copyright © 2018 Dan Lindsay. All rights reserved.
//

import Intents



class IntentHandler: INExtension, INStartWorkoutIntentHandling {
    func handle(intent: INStartWorkoutIntent, completion: @escaping (INStartWorkoutIntentResponse) -> Void) {
        print("Start workout intnet: ", intent)
        
        let userActivity: NSUserActivity? = nil
        
        guard let spokenPhrase = intent.workoutName?.spokenPhrase else {
            completion(INStartWorkoutIntentResponse(code: .failureNoMatchingWorkout, userActivity: userActivity))
            return
        }
        
        if spokenPhrase == "walk" || spokenPhrase == "run" {
            completion(INStartWorkoutIntentResponse(code: .handleInApp, userActivity: userActivity))
        } else {
            completion(INStartWorkoutIntentResponse(code: .failureNoMatchingWorkout, userActivity: userActivity))
        }
        
    }
   
}

