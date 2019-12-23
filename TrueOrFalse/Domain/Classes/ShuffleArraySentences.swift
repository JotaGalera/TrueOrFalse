//
//  DesordererOfSentences.swift
//  TrueOrFalse
//
//  Created by Javier Galera Garrido on 01/12/2019.
//  Copyright © 2019 Javier Galera Garrido. All rights reserved.
//

import Foundation

class ShufflerArraySentences{
    var arraySentences : [String]
    
    init(arraySentences: [String]){
        self.arraySentences = arraySentences
    }
    
    func getShuffleArraySentence()->[String]{
        shuffleArraySentences()
        return self.arraySentences
    }
    
    private func shuffleArraySentences(){
        self.arraySentences.shuffle()
    }
}
