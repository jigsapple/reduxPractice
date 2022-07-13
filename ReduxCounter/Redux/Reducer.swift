//
//  Reducer.swift
//  ReduxCounter
//
//  Created by Jignesh on 13/07/22.
//

import Foundation
import ReSwift

func counterReducer(action: Action, state: AppState?) -> AppState {
    // if no state has been provided, create the default state
    var state = state ?? AppState()
    
    switch action {
    case _ as CounterActionIncrease:
        state.counter += 1
    case _ as CounterActionDecrease:
        state.counter -= 1
    default:
        break
    }
    
    return state
}

