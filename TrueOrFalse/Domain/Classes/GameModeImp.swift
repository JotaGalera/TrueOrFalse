//
//  GameModeImp.swift
//  TrueOrFalse
//
//  Created by Javier Galera Garrido on 30/11/2019.
//  Copyright © 2019 Javier Galera Garrido. All rights reserved.
//

import UIKit


class GameModeImp : GameMode {
    let arrayCharacter : [Character]
    var targetCharacter : Character
    var imageTargetCharacter : String
    var sentenceTargetCharacter : String
    var optionsForPlayingEasy : OptionsForPlaying
    var arrayDifferentPossibilitiesSentences : [String]
    let numberRandomForChoosingTarget : Int
    var userResponse : String
    
    init(){
        let arrayCharacterFactory = ArrayCharacterFactoryImp.init()
        arrayCharacter = arrayCharacterFactory.make()
        targetCharacter = Character()
        imageTargetCharacter = ""
        sentenceTargetCharacter = ""
        optionsForPlayingEasy = OptionsForPlayingEasyModeImp.init(arrayDifferentsPossibilities: [])
        arrayDifferentPossibilitiesSentences = []
        numberRandomForChoosingTarget = Int.random(in: 0..<arrayCharacter.count)
        userResponse = ""
    }
    
    func setupEasyMode(){
        setupTarget()
        setupImageTarget()
        setupOneSentenceFromTarget()
        setupAnotherRandomSentences()
        desordeArraySentences()
        setOptionsForPlaying()
    }
    
    private func setupTarget(){
        self.targetCharacter = arrayCharacter[numberRandomForChoosingTarget]
    }
    
    private func setupImageTarget(){
        self.imageTargetCharacter = targetCharacter.imageName
    }
    
    private func setupOneSentenceFromTarget(){
        let numberRandomForChoosingSentenceFromTarget = Int.random(in: 0..<arrayCharacter[numberRandomForChoosingTarget].arraySentences.count)
        let sentenceFromTarget = arrayCharacter[numberRandomForChoosingTarget].arraySentences[numberRandomForChoosingSentenceFromTarget]
        arrayDifferentPossibilitiesSentences.append(sentenceFromTarget)
        sentenceTargetCharacter = sentenceFromTarget
    }
    
    private func setupAnotherRandomSentences(){
        while(arrayDifferentPossibilitiesSentences.count < 4){
            var numberRandom : Int
            repeat {
                numberRandom = Int.random(in: 0..<arrayCharacter.count)
            } while(numberRandomForChoosingTarget == numberRandom)
            guard let sentence = arrayCharacter[numberRandom].arraySentences.first else { return }
            setupOneRandomSentence(sentence:sentence)
        }
    }
    
    private func setupOneRandomSentence(sentence: String){
        self.arrayDifferentPossibilitiesSentences.append(sentence)
    }
    
    private func desordeArraySentences(){
        let sufflerArraySentences = ShufflerArraySentences(arraySentences: self.arrayDifferentPossibilitiesSentences)
        self.arrayDifferentPossibilitiesSentences = sufflerArraySentences.getShuffleArraySentence()
    }
    
    private func setOptionsForPlaying(){
        self.optionsForPlayingEasy = OptionsForPlayingEasyModeImp.init(arrayDifferentsPossibilities: self.arrayDifferentPossibilitiesSentences)
    }
    
    func getTargetCharacter()->Character{
        return self.targetCharacter
    }
    
    func getOptionsForPlaying()->OptionsForPlaying{
        return self.optionsForPlayingEasy
    }
    
    func userResponse(response: String){
        self.userResponse = response
    }
    
    func setSolutionPlayer(solution: String){
        self.userResponse = solution
    }
    
    func getSolution()->Bool{
        if(self.userResponse == self.sentenceTargetCharacter){
            return true
        }else{
            return false
        }
    }
}
