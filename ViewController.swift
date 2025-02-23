//
//  ViewController.swift
//  xdd
//
//  Created by Trakya7 on 21.02.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    
    let diceImages = ["zar1", "zar2", "zar3", "zar4", "zar5", "zar6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageView1.image = UIImage(named: "zar1")
        diceImageView2.image = UIImage(named: "zar2")
    }

    @IBAction func rollDice(_ sender: UIButton) {
        let randomIndex1 = Int.random(in: 0..<diceImages.count)
        let randomIndex2 = Int.random(in: 0..<diceImages.count)

        diceImageView1.image = UIImage(named: diceImages[randomIndex1])
        diceImageView2.image = UIImage(named: diceImages[randomIndex2])
    }
}

