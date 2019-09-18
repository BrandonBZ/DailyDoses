//
//  ViewController.swift
//  Insight
//
//  Created by HGPMAC78 on 7/6/19.
//  Copyright © 2019 HGPMAC78. All rights reserved.
//

import UIKit
import Firebase

class StartViewController: UIViewController {
    
    
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        if Auth.auth().currentUser != nil {
            self.performSegue(withIdentifier: "alreadyLoggedIn", sender: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    


}

