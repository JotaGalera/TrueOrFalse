//
//  AlertImp.swift
//  TrueOrFalse
//
//  Created by Javier Galera Garrido on 30/11/2019.
//  Copyright © 2019 Javier Galera Garrido. All rights reserved.
//

import UIKit

class AlertImp : Alert{
    var alert = UIAlertController.init()
    
    init(){}
    
    func setAlert(title: String, message: String, titleActionClose: String, titleActionAccept: String){
        setTitleAndMessageAlert(title: title, message: message)
        addActionAlertClose(titleActionClose: titleActionClose)
        addActionAlertAccept(titleActionAccept: titleActionAccept)
    }
    
    private func setTitleAndMessageAlert(title: String, message: String){
        self.alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    }
    
    private func addActionAlertClose(titleActionClose: String){
        let actionAlertClose = UIAlertAction(title: titleActionClose, style: .default, handler: nil)
        self.alert.addAction(actionAlertClose)
    }
    
    private func addActionAlertAccept(titleActionAccept: String){
        let actionAlertOk = UIAlertAction(title: titleActionAccept, style: .default, handler: nil)
        self.alert.addAction(actionAlertOk)
    }
    
    func getAlert()->UIAlertController{
        return self.alert
    }
}
