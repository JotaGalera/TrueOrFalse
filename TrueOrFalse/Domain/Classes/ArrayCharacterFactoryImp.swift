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
        character.setArraySentences(sentence: "carlos1")
        character.setArraySentences(sentence: "carlos2")
        character.setArraySentences(sentence: "carlos3")
        character.setArraySentences(sentence: "carlos4")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/gabri.png")
        character.setArraySentences(sentence: "gabri1")
        character.setArraySentences(sentence: "gabri2")
        character.setArraySentences(sentence: "gabri3")
        character.setArraySentences(sentence: "gabri4")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/isma.png")
        character.setArraySentences(sentence: "isma1")
        character.setArraySentences(sentence: "isma2")
        character.setArraySentences(sentence: "isma3")
        character.setArraySentences(sentence: "isma4")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/ivansito.png")
        character.setArraySentences(sentence: "ivansito1")
        character.setArraySentences(sentence: "ivansito2")
        character.setArraySentences(sentence: "ivansito3")
        character.setArraySentences(sentence: "ivansito4")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/jj.png")
        character.setArraySentences(sentence: "jj1")
        character.setArraySentences(sentence: "jj2")
        character.setArraySentences(sentence: "jj3")
        character.setArraySentences(sentence: "jj4")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/leo.png")
        character.setArraySentences(sentence: "leo1")
        character.setArraySentences(sentence: "leo2")
        character.setArraySentences(sentence: "leo3")
        character.setArraySentences(sentence: "leo4")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/lucia.png")
        character.setArraySentences(sentence: "lucia1")
        character.setArraySentences(sentence: "lucia2")
        character.setArraySentences(sentence: "lucia3")
        character.setArraySentences(sentence: "lucia4")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/manu.png")
        character.setArraySentences(sentence: "manu1")
        character.setArraySentences(sentence: "manu2")
        character.setArraySentences(sentence: "manu3")
        character.setArraySentences(sentence: "manu4")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/mara.png")
        character.setArraySentences(sentence: "mara1")
        character.setArraySentences(sentence: "mara2")
        character.setArraySentences(sentence: "mara3")
        character.setArraySentences(sentence: "mara4")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/pepe.png")
        character.setArraySentences(sentence: "pepe1")
        character.setArraySentences(sentence: "pepe2")
        character.setArraySentences(sentence: "pepe3")
        character.setArraySentences(sentence: "pepe4")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/raquel.png")
        character.setArraySentences(sentence: "raquel1")
        character.setArraySentences(sentence: "raquel2")
        character.setArraySentences(sentence: "raquel3")
        character.setArraySentences(sentence: "raquel4")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/ravasco.png")
        character.setArraySentences(sentence: "ravasco1")
        character.setArraySentences(sentence: "ravasco2")
        character.setArraySentences(sentence: "ravasco3")
        character.setArraySentences(sentence: "ravasco4")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/ruben.png")
        character.setArraySentences(sentence: "ruben1")
        character.setArraySentences(sentence: "ruben2")
        character.setArraySentences(sentence: "ruben3")
        character.setArraySentences(sentence: "ruben4")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/teo.png")
        character.setArraySentences(sentence: "teo1")
        character.setArraySentences(sentence: "teo2")
        character.setArraySentences(sentence: "teo3")
        character.setArraySentences(sentence: "teo4")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/victor.png")
        character.setArraySentences(sentence: "victor1")
        character.setArraySentences(sentence: "victor2")
        character.setArraySentences(sentence: "victor3")
        character.setArraySentences(sentence: "victor4")
        arrayCharacters.append(character)
        
        character = Character.init()
        character.setImageName(image: "teamMobilePhotos/zamora.png")
        character.setArraySentences(sentence: "zamora1")
        character.setArraySentences(sentence: "zamora2")
        character.setArraySentences(sentence: "zamora3")
        character.setArraySentences(sentence: "zamora4")
        arrayCharacters.append(character)
        
        return arrayCharacters
    }
}
