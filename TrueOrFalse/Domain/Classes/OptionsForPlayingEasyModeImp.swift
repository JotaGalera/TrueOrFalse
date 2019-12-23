//
//  OptionsForPlayingImp.swift
//  TrueOrFalse
//
//  Created by Javier Galera Garrido on 01/12/2019.
//  Copyright © 2019 Javier Galera Garrido. All rights reserved.
//

import Foundation

class OptionsForPlayingEasyModeImp : OptionsForPlaying{
    var arrayDifferentsPossibilities : [String]
    
    init(arrayDifferentsPossibilities: [String]){
        self.arrayDifferentsPossibilities = arrayDifferentsPossibilities
    }
    
    func setOptions(arrayDifferentsPossibilities: [String]) {
        self.arrayDifferentsPossibilities = arrayDifferentsPossibilities
    }
    
    func getOptions()->OptionsForPlaying {
        return self
    }
    
    func getArrayDifferentsPossibilities() -> [String]{
        return self.arrayDifferentsPossibilities
    }
}
