//
//  ViewController.swift
//  Nabeatsu
//
//  Created by nagata on 2017/06/19.
//  Copyright © 2017年 Life is Tech!. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var faceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func plusButton(){
        number = number + 1
        countLabel.text = String(number)
        isAho()
    }
    
    @IBAction func clearButton() {
        number = 0
        countLabel.text = String(number)
        isAho()
    }
    
    @IBAction func random() {
        number = Int.random(in: 0...100)
        countLabel.text = String(number)
        isAho ()
    }

    func isAho() {
        var checkNum: Int = number
        
        if number == 0 {
            faceLabel.text = "(゜o゜)"
        } else if (number % 5) == 0 {
            faceLabel.text = "(∪＾ω＾)ゴ！"
        } else if (number % 7) == 0 {
            faceLabel.text = "(゜o゜)"
        } else if (number % 3) == 0 {
            faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
        } else if number != 0 {
            while checkNum != 0 {
                if (checkNum % 10) == 3 {
                    faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
                    break
                } else {
                    checkNum /= 10
                }
                if primeNumberCheck() == true {
                    faceLabel.text = "(　･`ω･´)ｷﾘｯ 素数!!"
                } else {
                    faceLabel.text = "(゜o゜)"
                }
            }
        }
    }
   
    func primeNumberCheck() -> Bool {
        var numberForCheck: Int = 2
        if number == 1 {
            return true
        } else {
            while (number % numberForCheck) != 0 {
                numberForCheck += 1
            }
            
            if numberForCheck ==  number {
                return false
            } else  {
                return true
            }
        }
    }
    
}

