//
//  GameMode.swift
//  TrueOrFalse
//
//  Created by Javier Galera Garrido on 30/11/2019.
//  Copyright © 2019 Javier Galera Garrido. All rights reserved.
//

import Foundation

protocol GameMode{
    func setupEasyMode()
    func getTargetCharacter()->Character
    func getOptionsForPlaying()->OptionsForPlaying
}
