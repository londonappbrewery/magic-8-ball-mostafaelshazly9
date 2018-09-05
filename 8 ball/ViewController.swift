//
//  ViewController.swift
//  8 ball
//
//  Created by Mostafa Elshazly on 8/12/18.
//  Copyright © 2018 Mostafa Elshazly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImage: UIImageView!
    let ballArray = [#imageLiteral(resourceName: "ball1"),#imageLiteral(resourceName: "ball2"),#imageLiteral(resourceName: "ball3"),#imageLiteral(resourceName: "ball4"),#imageLiteral(resourceName: "ball5")]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateBallImage(){
        ballImage.image = ballArray[Int(arc4random_uniform(5))]
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateBallImage()
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImage()
    }
    
}

