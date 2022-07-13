//
//  ViewController.swift
//  ReduxCounter
//
//  Created by Jignesh on 13/07/22.
//

import UIKit
import ReSwift

class ViewController: UIViewController, StoreSubscriber {
    typealias StoreSubscriberStateType = AppState
    
    @IBOutlet weak var lblCounter: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // subscribe to state changes
        mainStore.subscribe(self)
    }
    
    func newState(state: AppState) {
        lblCounter.text = "\(mainStore.state.counter)"
    }
    
    @IBAction func btnPlus(_ sender: AnyObject) {
        mainStore.dispatch(CounterActionIncrease());
    }
    
    @IBAction func btnMinus(_ sender: AnyObject) {
        mainStore.dispatch(CounterActionDecrease());
    }

}

