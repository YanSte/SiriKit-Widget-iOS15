//
//  IntentHandler.swift
//  IntentHandlerProvider
//
//  Created by Yannick Stephan on 04/10/2021.
//

import Intents

class IntentHandler: INExtension {
    
    override func handler(for intent: INIntent) -> Any {
        // This is the default implementation.  If you want different objects to handle different intents,
        // you can override this and return the handler you want for that particular intent.
        
//        switch intent {
//        case is GoToFavoriteIntent:
//            return GoToFavoriteIntentHandler()
//
//        case is RequestAlertIntent:
//            return RequestAlertIntentHandler()
//
//        default:
//            return intent
//        }
        
        return self
    }
    
}
