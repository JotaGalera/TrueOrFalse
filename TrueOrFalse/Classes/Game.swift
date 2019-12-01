//
//  Game.swift
//  TrueOrFalse
//
//  Created by Javier Galera Garrido on 24/11/2019.
//  Copyright © 2019 Javier Galera Garrido. All rights reserved.
//

import UIKit

class Game {
    let DIFFICULT_MODE : KeyValuePairs = [0:"EASY" , 1:"MEDIUM", 2:"HARD", 3:"IMPOSSIBLE"]
    var currentDifficult : Int?
    var gameMode : GameMode
    
    
    init(){
        gameMode = GameModeImp()
        currentDifficult = 0
    }
    
    func setGameMode(){
        if(currentDifficult == 0){
            gameMode.setupEasyMode()
        }
    }
    
    func setCurrentDifficult(difficultChoosen: Int){
        self.currentDifficult = difficultChoosen
    }
    
    func getCurrentDifficult()->Int?{
        return self.currentDifficult
    }
    
    func getDifficultMode(numberDifficult: Int) -> String{
        return DIFFICULT_MODE[numberDifficult].value
    }
    
    func getNumberDifficult() -> Int{
        DIFFICULT_MODE.count
    }
    
    func getImageTarget()->String{
        let targetCharacter : Character
        targetCharacter = gameMode.getTargetCharacter()
        return targetCharacter.getImageName()
    }
    
    func getOptionsForPlaying()->OptionsForPlaying{
        return gameMode.getOptionsForPlaying()
    }
}
