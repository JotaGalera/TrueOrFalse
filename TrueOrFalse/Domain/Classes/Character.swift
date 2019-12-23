//
//  Character.swift
//  TrueOrFalse
//
//  Created by Javier Galera Garrido on 26/11/2019.
//  Copyright © 2019 Javier Galera Garrido. All rights reserved.
//

import Foundation
import UIKit

struct Character{
    var imageName: String
    var arraySentences: [String] = []
    
    init(){
        self.imageName = ""
        self.arraySentences = []
    }
    
    mutating func setImageName(image: String){
        self.imageName = image
    }
    
    func getImageName()->String{
        return self.imageName
    }
    
    mutating func setArraySentences(sentence: String){
        self.arraySentences.append(sentence)
    }
    
    func getRandomSentence()->String{
        let random : Int = Int.random(in: 0..<self.arraySentences.count)
        return self.arraySentences[random]
    }
    
    func getArraySentences()->[String]{
        return self.arraySentences
    }
}
