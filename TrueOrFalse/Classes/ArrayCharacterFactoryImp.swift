//
//  CharacterFactoryImp.swift
//  TrueOrFalse
//
//  Created by Javier Galera Garrido on 26/11/2019.
//  Copyright © 2019 Javier Galera Garrido. All rights reserved.
//

import Foundation

class ArrayCharacterFactoryImp : ArrayCharacterFactory{
    init(){}
    
    func make() -> [Character] {
        
        var arrayCharacters: [Character] = []
        
        var character = Character()
        character.setImageName(image: "teamMobilePhotos/me.png")
        character.setArraySentences(sentence: "miobmio")
        character.setArraySentences(sentence: "Tucutucu")
        character.setArraySentences(sentence: "Me estoy agobiando")
        character.setArraySentences(sentence: "Voy al mecanico y me la enchufa")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/carlos.png")
        character.setArraySentences(sentence: "a")
        character.setArraySentences(sentence: "b")
        character.setArraySentences(sentence: "c")
        character.setArraySentences(sentence: "d")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/gabri.png")
        character.setArraySentences(sentence: "e")
        character.setArraySentences(sentence: "f")
        character.setArraySentences(sentence: "g")
        character.setArraySentences(sentence: "h")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/isma.png")
        character.setArraySentences(sentence: "i")
        character.setArraySentences(sentence: "j")
        character.setArraySentences(sentence: "k")
        character.setArraySentences(sentence: "l")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/ivansito.png")
        character.setArraySentences(sentence: "m")
        character.setArraySentences(sentence: "n")
        character.setArraySentences(sentence: "ñ")
        character.setArraySentences(sentence: "o")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/jj.png")
        character.setArraySentences(sentence: "p")
        character.setArraySentences(sentence: "q")
        character.setArraySentences(sentence: "r")
        character.setArraySentences(sentence: "s")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/leo.png")
        character.setArraySentences(sentence: "t")
        character.setArraySentences(sentence: "u")
        character.setArraySentences(sentence: "v")
        character.setArraySentences(sentence: "w")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/lucia.png")
        character.setArraySentences(sentence: "x")
        character.setArraySentences(sentence: "y")
        character.setArraySentences(sentence: "z")
        character.setArraySentences(sentence: "aa")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/manu.png")
        character.setArraySentences(sentence: "bb")
        character.setArraySentences(sentence: "cc")
        character.setArraySentences(sentence: "dd")
        character.setArraySentences(sentence: "ee")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/mara.png")
        character.setArraySentences(sentence: "ff")
        character.setArraySentences(sentence: "gg")
        character.setArraySentences(sentence: "hh")
        character.setArraySentences(sentence: "ii")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/me.png")
        character.setArraySentences(sentence: "jj")
        character.setArraySentences(sentence: "kk")
        character.setArraySentences(sentence: "ll")
        character.setArraySentences(sentence: "mm")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/pepe.png")
        character.setArraySentences(sentence: "nn")
        character.setArraySentences(sentence: "ññ")
        character.setArraySentences(sentence: "oo")
        character.setArraySentences(sentence: "pp")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/raquel.png")
        character.setArraySentences(sentence: "qq")
        character.setArraySentences(sentence: "rr")
        character.setArraySentences(sentence: "ss")
        character.setArraySentences(sentence: "tt")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/ravasco.png")
        character.setArraySentences(sentence: "uu")
        character.setArraySentences(sentence: "vv2")
        character.setArraySentences(sentence: "ww")
        character.setArraySentences(sentence: "xx")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/ruben.png")
        character.setArraySentences(sentence: "yy")
        character.setArraySentences(sentence: "zz")
        character.setArraySentences(sentence: "aaa")
        character.setArraySentences(sentence: "bbb")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/teo.png")
        character.setArraySentences(sentence: "ccc")
        character.setArraySentences(sentence: "ddd")
        character.setArraySentences(sentence: "eee")
        character.setArraySentences(sentence: "fff")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/victor.png")
        character.setArraySentences(sentence: "ggg")
        character.setArraySentences(sentence: "hhh")
        character.setArraySentences(sentence: "iii")
        character.setArraySentences(sentence: "jjj")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/zamora.png")
        character.setArraySentences(sentence: "kkk")
        character.setArraySentences(sentence: "lll")
        character.setArraySentences(sentence: "nnn")
        character.setArraySentences(sentence: "mmm")
        arrayCharacters.append(character)
        
        return arrayCharacters
    }
}
