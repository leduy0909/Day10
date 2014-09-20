//
//  BonFire.swift
//  UIViewControls
//
//  Created by techmaster on 9/19/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class BonFire: UIViewController {
    var fire : UIImageView?
    var label: UILabel?
    override func viewDidLoad() {
        super.viewDidLoad()
        fire!.startAnimating()
    }
    
    override func loadView() {
        super.loadView()
        var timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("update"), userInfo: nil, repeats: true)
        label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        label!.center = CGPointMake(64 , 64)
        label!.text = "Hello World"
        label!.textColor = UIColor.redColor()
        label!.textAlignment = NSTextAlignment.Center
       self.view.backgroundColor = UIColor.blackColor()
       self.edgesForExtendedLayout = UIRectEdge.None
       fire = UIImageView(frame: CGRect(x: 0, y: 0, width: 320, height: 480))
        fire?.center = CGPoint(x: self.view.bounds.size.width * 0.5, y: self.view.bounds.size.height * 0.5)
        var images: [UIImage] = [UIImage]()
        for i in 1...17 {
            var fileName: String
            if i < 10 {
                fileName = "campFire0\(i).gif"
            } else {
                fileName = "campFire\(i).gif"
            }
            images.append(UIImage(named: fileName))
        }
        fire!.animationImages = images
        fire!.animationDuration = 1
        fire!.animationRepeatCount = 100
        self.view.addSubview(fire!)
        self.view.addSubview(label!)
    }
    func update() {
        UIView.animateWithDuration(5, animations: {
            self.label!.center = CGPointMake(450, 64)
            }, completion: { (finished: Bool) in
        })
        
    }
}
