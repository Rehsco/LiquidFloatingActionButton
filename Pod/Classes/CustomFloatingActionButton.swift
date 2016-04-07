//
//  CustomFloatingActionButton.swift
//  Pods
//
//  Created by Martin Rehder on 07.04.16.
//
//

import UIKit

public class CustomFloatingActionButton: LiquidFloatingActionButton {

    public override func drawRect(rect: CGRect) {
    }
    
    override func setup() {
        self.backgroundColor = UIColor.clearColor()
        self.clipsToBounds = false
        
        self.baseView.setup(self)
        addSubview(baseView)
        
        liquidView.frame = baseView.frame
        liquidView.userInteractionEnabled = false
        addSubview(liquidView)
        
        plusLayer = createPlusLayer(liquidView.bounds)
        liquidView.layer.addSublayer(plusLayer)
        plusLayer.frame = liquidView.bounds
    }

}
