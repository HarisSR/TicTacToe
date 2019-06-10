//
//  ViewController.swift
//  TicTacToe
//
//  Created by Haris Shobaruddin Roabbni on 09/05/19.
//  Copyright © 2019 Haris Shobaruddin Robbani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // player score number
    var numb1 = [Int]()
    var numb2 = [Int]()
    
    @IBAction func btnGame(_ sender: Any) {
        let btnPlayer = sender as! UIButton
        btnClick(btnclick: btnPlayer)
    }
    
    var activePlayer = 1
    func btnClick(btnclick: UIButton) {
        if activePlayer == 1 {
            btnclick.setTitle("X", for: UIControl.State.normal)
            btnclick.isEnabled = false
            btnclick.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
            numb1.append(btnclick.tag)
            print(numb1)
            findWinner(arrNumb: numb1, player: activePlayer)
            activePlayer = 2
        } else {
            btnclick.setTitle("O", for: UIControl.State.normal)
            btnclick.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
            btnclick.isEnabled = false
            numb2.append(btnclick.tag)
            print(numb2)
            findWinner(arrNumb: numb2, player: activePlayer)
            activePlayer = 1
        }
    }
    
    func findWinner(arrNumb: [Int], player: Int) {
        
        let msg = "Player \(player) Win !"
        var winner = -1
        // horizontal row
        if arrNumb.contains(1) && arrNumb.contains(2) && arrNumb.contains(3) {
            winner = player
        }
        
        if arrNumb.contains(4) && arrNumb.contains(5) && arrNumb.contains(6) {
            winner = player
        }
        
        if arrNumb.contains(7) && arrNumb.contains(8) && arrNumb.contains(9) {
            winner = player
        }
        
        // vertical row
        if arrNumb.contains(1) && arrNumb.contains(4) && arrNumb.contains(7) {
            winner = player
        }
        
        if arrNumb.contains(2) && arrNumb.contains(5) && arrNumb.contains(8) {
            winner = player
        }
        
        if arrNumb.contains(3) && arrNumb.contains(6) && arrNumb.contains(9) {
            winner = player
        }
        
        // diagonal row
        if arrNumb.contains(1) && arrNumb.contains(5) && arrNumb.contains(9) {
            winner = player
        }
        
        if arrNumb.contains(3) && arrNumb.contains(5) && arrNumb.contains(7) {
            winner = player
        }
        
        if winner != -1 {
            let alert = UIAlertController(title: "Winner", message: msg, preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func resetGame() {
        
    }
   
}

