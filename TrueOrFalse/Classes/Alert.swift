//
//  Alert.swift
//  TrueOrFalse
//
//  Created by Javier Galera Garrido on 30/11/2019.
//  Copyright © 2019 Javier Galera Garrido. All rights reserved.
//

import UIKit

protocol Alert {
   func setAlert(title: String, message: String, titleActionClose: String, titleActionAccept: String)
   func getAlert()->UIAlertController
}
