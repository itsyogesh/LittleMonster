//
//  ViewController.swift
//  LittleMonster
//
//  Created by Yogesh Kumar on 12/02/16.
//  Copyright © 2016 itsyogesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var monsterImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var imageArray = [UIImage]()
        
        for(var x = 1; x <= 4; x++) {
            let image = UIImage(named: "idle\(x).png")
            imageArray.append(image!)
        }
        
        
        monsterImg.animationImages = imageArray
        monsterImg.animationDuration = 0.8
        monsterImg.animationRepeatCount = 0
        monsterImg.startAnimating();
    }

    

}

