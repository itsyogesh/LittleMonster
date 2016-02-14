//
//  ViewController.swift
//  LittleMonster
//
//  Created by Yogesh Kumar on 12/02/16.
//  Copyright © 2016 itsyogesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var monsterImg: MonsterImage!
    @IBOutlet weak var foodImg: DragImage!
    @IBOutlet weak var heartImg: DragImage!
    @IBOutlet weak var penalty1: PenaltyImage!
    @IBOutlet weak var penalty2: PenaltyImage!
    @IBOutlet weak var penalty3: PenaltyImage!
    
    let MAX_PENALTIES = 3
    var penalties = 0
    var timer: NSTimer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodImg.dropTarget = monsterImg
        heartImg.dropTarget = monsterImg
        
        penaltyStartState()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "itemDroppedOnCharcter:", name: "onTargetDropped", object: nil)

        startTimer()
    }
    
    func itemDroppedOnCharcter (notif: AnyObject){
        print("Item dropped on character")
    }
    
    func startTimer() {
        if timer != nil {
            timer.invalidate()
        }
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: "changeGameState", userInfo: nil, repeats: true)
    }
    
    func changeGameState() {
        penalties++
        
        if(penalties == 1){
            penalty1.setPenalty()
            penalty2.invalidate()
        }
        
        else if (penalties == 2){
            penalty2.setPenalty()
            penalty3.invalidate()
        }
        
        else if (penalties >= 3){
            penalty3.setPenalty()
        }
        else {
            penaltyStartState()
        }
        
        if (penalties >= MAX_PENALTIES){
            gameOver()
            monsterImg.playDeathAnimation()
            
        }
    }
    
    func gameOver(){
        timer.invalidate()
    }
    
    func penaltyStartState() {
        penalty1.invalidate()
        penalty2.invalidate()
        penalty3.invalidate()
    }

}



