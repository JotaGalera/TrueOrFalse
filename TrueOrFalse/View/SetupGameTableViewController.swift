//
//  setupGameTableViewController.swift
//  TrueOrFalse
//
//  Created by Javier Galera Garrido on 24/11/2019.
//  Copyright © 2019 Javier Galera Garrido. All rights reserved.
//

import UIKit

class SetupGameTableViewController : UITableViewController {
    let TITLEFIRTSECTION = "Choose the difficult mode:"
    let HEADERHEIGHTSIZE : CGFloat = 50
    let game : Game = Game()
    let router = Router()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return game.getNumberDifficult()
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        setSizeHeaderInSection(textSize: HEADERHEIGHTSIZE)
        return TITLEFIRTSECTION
    }
    
    func setSizeHeaderInSection(textSize: CGFloat){
        tableView.sectionHeaderHeight = textSize
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellSetupGame", for: indexPath)
        
        let difficultGame = game.getDifficultMode(numberDifficult: indexPath.row)
        cell.textLabel?.text = difficultGame
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cellSelected = tableView.cellForRow(at: indexPath)
        let messageAlert = cellSelected?.textLabel?.text
        let alert = setupAlert(messageAlert: messageAlert!)
        game.setCurrentDifficult(difficultChoosen: indexPath.row)
        
        present(alert, animated: true, completion: nil)
    }
    
    func setupAlert(messageAlert: String)->UIAlertController{
        let alert = UIAlertController(title: "Are you ready?", message: messageAlert, preferredStyle: .alert)
        let actionAlertClose = UIAlertAction(title: "Close", style: .default, handler: nil)
        alert.addAction(actionAlertClose)
        
        let actionAlertOk = UIAlertAction(title: "OK", style: .default, handler: startGame)
        alert.addAction(actionAlertOk)
        
        return alert
    }
    
    func startGame(alert: UIAlertAction!){
        print("Empieza el juego")
        router.goToEasyModeViewController(game: game, controller: self)
    }

   
}
