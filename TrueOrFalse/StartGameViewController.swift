//
//  StartGameViewController.swift
//  TrueOrFalse
//
//  Created by Javier Galera Garrido on 26/11/2019.
//  Copyright © 2019 Javier Galera Garrido. All rights reserved.
//

import UIKit

class StartGameViewController : UIViewController {
    
    @IBOutlet weak var imageTarget: UIImageView!
    @IBOutlet weak var optionOne: UIButton!
    @IBOutlet weak var optionTwo: UIButton!
    
    var arrayCharacterFactory = ArrayCharacterFactoryImp.init()
    
    var game = Game()
    
    
    override func viewDidLoad() {
        print (game.currentDifficult)
        let arrayCharacter = arrayCharacterFactory.make()
        for i in 0...1{
            let namePhoto = arrayCharacter[i].getImageName()
            let photo = UIImage(named: namePhoto)
            imageTarget.image = photo
            
            let opcion1 = arrayCharacter[i].getRandomSentence()
            optionOne.setTitle(opcion1, for: .normal)
        }
    }
}
