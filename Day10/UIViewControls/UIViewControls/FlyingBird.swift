//
//  FlyingBird.swift
//  UIViewControls
//
//  Created by Mettamdaica0909 on 9/20/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class FlyingBird: UIViewController {
    var bird: UIImageView?
    var flyButton: UIButton?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
     override func loadView() {
        super.loadView()
        self.view.backgroundColor = UIColor.grayColor()
        self.edgesForExtendedLayout = UIRectEdge.None
        bird = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        bird!.center = CGPointMake(400-64, self.view.bounds.size.height-120)
        bird!.image = UIImage(named: "bird05.png")
        self.bird!.alpha = 1.0
        self.view.addSubview(bird!)
        
        //Button
        flyButton = UIButton(frame: CGRect(x: 100, y: 540, width: 75, height: 35))
        flyButton!.backgroundColor = UIColor.blueColor()
        flyButton!.setTitle("Fly", forState: UIControlState.Normal)
        flyButton!.addTarget(self, action: "FlyBird:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(flyButton!)
    }
    func FlyBird(button: UIButton) {
        UIView.animateWithDuration(3, animations: {
            self.bird!.center = CGPointMake(64, 64)
            self.bird!.alpha = 0
            }, completion: { (finished: Bool) in
                self.bird!.center = CGPointMake(400-64, self.view.bounds.size.height-120)
        })
        
    }
}
