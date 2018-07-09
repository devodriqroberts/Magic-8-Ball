//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Devodriq Roberts on 7/8/18.
//  Copyright © 2018 Devodriq Roberts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView8Ball: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        let randomNumber = getRandomNumber()
        returnAnswer(withBall: randomNumber)
    }
    func returnAnswer(withBall ball: Int) {
        let ballNumber = ball
        imageView8Ball.image = UIImage(named: "ball\(ballNumber)")
    }
    
    func getRandomNumber() -> Int {
        let randomNumber = Int(arc4random_uniform(5) + 1)
        return randomNumber
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        let randomNumber = getRandomNumber()
        returnAnswer(withBall: randomNumber )
    }
}

