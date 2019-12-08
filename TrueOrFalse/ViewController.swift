//
//  ViewController.swift
//  WhoIsWho
//
//  Created by Javier Galera Garrido on 24/11/2019.
//  Copyright © 2019 Javier Galera Garrido. All rights reserved.
//

import UIKit

class ViewController: UIViewController {    
    @IBOutlet weak var toolBar: UIToolbar!
    @IBOutlet weak var imageToolBar: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        putIconBSInToolbar()
    }

    func putIconBSInToolbar(){
        let iconBS = UIImage(named: "imagesApp/BSicon.png")?.withRenderingMode(.alwaysOriginal)
        imageToolBar.image = iconBS
    }
}

