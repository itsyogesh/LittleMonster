//
//  PenaltyImage.swift
//  LittleMonster
//
//  Created by Yogesh Kumar on 14/02/16.
//  Copyright © 2016 itsyogesh. All rights reserved.
//

import Foundation
import UIKit

class PenaltyImage: UIImageView {
    
    let DIM_ALPHA: CGFloat = 0.2
    let OPAQUE: CGFloat = 1.0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func invalidate(){
        self.alpha = DIM_ALPHA
    }
    
    func setPenalty() {
        self.alpha = OPAQUE
    }
    
}