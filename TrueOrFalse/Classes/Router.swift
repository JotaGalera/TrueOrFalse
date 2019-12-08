//
//  Router.swift
//  TrueOrFalse
//
//  Created by Javier Galera Garrido on 27/11/2019.
//  Copyright © 2019 Javier Galera Garrido. All rights reserved.
//

import UIKit

class Router{
    let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
    let easyModeStoryBoard = UIStoryboard(name: "EasyMode", bundle: nil)
        
    func goToEasyModeViewController(game: Game, controller: UIViewController) {
        if let navigationController = controller.navigationController,
            let destinationController = easyModeStoryBoard.instantiateViewController(identifier: "EasyModeViewController") as? EasyModeViewController {
                destinationController.game = game
                navigationController.pushViewController(destinationController, animated: true)
        }
    }
}
