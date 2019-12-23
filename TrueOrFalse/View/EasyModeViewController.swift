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
    var optionPlayer : String = ""
    var solutionGame : Bool = true
    
    var game: Game = Game()
    
    
    override func viewDidLoad() {
        startEasyGame()
    }
    
    func startEasyGame(){
        game = Game.init()
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
        optionPlayer = message
        let alert = createAlert(textOptionButton: message)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func playerChooseSecondOption(_ sender: Any) {
        guard let message = optionTwoButton.titleLabel?.text else { return }
        optionPlayer = message
        let alert = createAlert(textOptionButton: message)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func playerChooseThirdOption(_ sender: Any) {
        guard let message = optionThreeButton.titleLabel?.text else { return }
        optionPlayer = message
        let alert = createAlert(textOptionButton: message)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func playerChooseFourthOption(_ sender: Any) {
        guard let message = optionFourButton.titleLabel?.text else { return }
        optionPlayer = message
        let alert = createAlert(textOptionButton: message)
        present(alert, animated: true, completion: nil)
    }

    func createAlert(textOptionButton: String)->UIAlertController{
        let alert = UIAlertController(title: "Are you sure?", message: textOptionButton, preferredStyle: .alert)
        let actionAlertClose = UIAlertAction(title: "No", style: .default, handler: nil)
        alert.addAction(actionAlertClose)

        let actionAlertOk = UIAlertAction(title: "Yes", style: .default, handler: sendPlayerOption)
        alert.addAction(actionAlertOk)
        
        return alert
    }
    
    func sendPlayerOption(alert: UIAlertAction!){
        game.setSolution(solution: optionPlayer)
        showSolution()
    }
    
    func showSolution(){
        solutionGame = game.getSolution()
        if(solutionGame == true){
            let alert = UIAlertController(title: "CONGRATS!!", message: "Your option is correct!", preferredStyle: .alert)
            let actionAlertOk = UIAlertAction(title: "Next", style: .default, handler: nil)
            alert.addAction(actionAlertOk)
            present(alert, animated: true, completion: startEasyGame)
        }else{
            let alert = UIAlertController(title: "Your options is incorrect", message: "Better luck next time!", preferredStyle: .alert)
            let actionAlertOk = UIAlertAction(title: "Next", style: .default, handler: nil)
            alert.addAction(actionAlertOk)
            present(alert, animated: true, completion: nil)
        }
        
    }
}
