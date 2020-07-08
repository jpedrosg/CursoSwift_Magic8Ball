//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var imgBall: UIImageView!
    @IBOutlet weak var btnAsk: UIButton!
    
    override func viewDidLoad() {
        self.btnAsk.layer.cornerRadius = 20;
    }
    
    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]

    @IBAction func btnAsk(_ sender: UIButton) {
        imgBall.image = ballArray.randomElement();
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if(motion == UIEvent.EventSubtype.motionShake){
            self .btnAsk(btnAsk)
        }
    }
    
}

