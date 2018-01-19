//
//  ViewController.swift
//  Concentration
//
//  Created by Yunpeng Niu on 19/01/18.
//  Copyright © 2018 Yunpeng Niu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var flipCountLabel: UILabel!

    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flip Count: \(flipCount)"
        }
    }

    @IBAction func touchCard(_ sender: UIButton) {
        flipCard(withEmoji: "👻", on: sender)
        flipCount += 1
    }

    @IBAction func touchSecondCard(_ sender: UIButton) {
        flipCard(withEmoji: "🎃", on: sender)
        flipCount += 1
    }

    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
}
