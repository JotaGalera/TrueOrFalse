//
//  EasyModeViewController.swift
//  TrueOrFalse
//
//  Created by Javier Galera Garrido on 27/11/2019.
//  Copyright © 2019 Javier Galera Garrido. All rights reserved.
//

import UIKit

class EasyModeViewController : UIViewController {
    
    @IBOutlet weak var imageTarget: UIImageView!
   
    @IBOutlet weak var optionOneButton: UIButton!
    @IBOutlet weak var optionTwoButton: UIButton!
    @IBOutlet weak var optionThreeButton: UIButton!
    @IBOutlet weak var optionFourButton: UIButton!
    
    var arrayCharacterFactory = ArrayCharacterFactoryImp.init()
    
    var game = Game()
    
    
    override func viewDidLoad() {
        startEasyGame()
    }
    
    func startEasyGame(){
        game.setGameMode()
        setupImageTarget()
        setupButtonsWithOption()
    }
    
    func setupImageTarget(){
        let namePhoto = game.getImageTarget()
        let photo = UIImage(named: namePhoto)
        imageTarget.image = photo
    }
    
    func setupButtonsWithOption(){
        let optionsForPlaying = game.getOptionsForPlaying() as? OptionsForPlayingEasyModeImp
        let arraySentences = optionsForPlaying?.getArrayDifferentsPossibilities()
        
        guard let tipicalTarjetSentenceFirstOption = arraySentences?[0] else {return}
        optionOneButton.setTitle(tipicalTarjetSentenceFirstOption, for: .normal)
        
        guard let tipicalTarjetSentenceSecondOption = arraySentences?[1] else {return}
        optionTwoButton.setTitle(tipicalTarjetSentenceSecondOption, for: .normal)
        
        guard let tipicalTarjetSentenceThirdOption = arraySentences?[2] else {return}
        optionThreeButton.setTitle(tipicalTarjetSentenceThirdOption, for: .normal)
        
        guard let tipicalTarjetSentenceFourthOption = arraySentences?[3] else {return}
        optionFourButton.setTitle(tipicalTarjetSentenceFourthOption, for: .normal)
    }
    
    @IBAction func playerChooseFirstOption(_ sender: Any) {
        guard let message = optionOneButton.titleLabel?.text else { return }
        createAlert(textOptionButton: message)
    }

    func createAlert(textOptionButton: String){
        let alert : Alert = AlertImp()
        alert.setAlert(title: "Are you sure?", message: textOptionButton, titleActionClose: "No", titleActionAccept: "Yes")
        present(alert.getAlert(), animated: true, completion: nil)
    }

}
