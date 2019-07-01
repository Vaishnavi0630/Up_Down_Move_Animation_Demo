//
//  ViewController.swift
//  AsmArrowMoveDemo
//
//  Created by Admin on 03/06/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ImageViewArrow: UIImageView!
    
    override func viewDidLoad() {
        
//        UIView.animate(withDuration: 1) {
//            self.ImageViewArrow.frame.origin.y-=200
//        }
        
        super.viewDidLoad()
        
        let hover = CABasicAnimation(keyPath: "position")

        hover.isAdditive = true
        hover.fromValue = NSValue(cgPoint: CGPoint.zero)
        hover.toValue = NSValue(cgPoint: CGPoint(x: 0.0, y: 50.0))
        hover.autoreverses = true
        hover.duration = 0.5
        hover.repeatCount = Float.infinity
        ImageViewArrow.layer.add(hover, forKey: "myHoverAnimation")
        
        // Do any additional setup after loading the view.
    }


}

