//
//  ViewController.swift
//  Dicee
//
//  Created by Treinamento on 8/13/19.
//  Copyright © 2019 cynthiamayumiwatanabeyamaoto. All rights reserved.
//

import UIKit
let diceArray = ["dice1", "dice2", "dice3", "dice4","dice5", "dice6"]

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    //definir as variaveis
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()
        
    }
    //codigo para chacoalhar o iphone
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    func updateDiceImages() {
        //This will get execute when eht roll button gets pressed
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        //testando se esta gerando numeros aleatorios entre 0 e 5
        //print(randomDiceIndex1)
        diceImageView1.image = UIImage(named: diceArray [randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray [randomDiceIndex2])
        }
    }
    


