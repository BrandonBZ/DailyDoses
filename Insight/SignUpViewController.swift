//
//  SignUpViewController.swift
//  Insight
//
//  Created by HGPMAC78 on 7/8/19.
//  Copyright © 2019 HGPMAC78. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController {
    
    
        @IBOutlet weak var email: UITextField!
        @IBOutlet weak var password: UITextField!
        @IBOutlet weak var passwordConfirm: UITextField!
    
        @IBAction func signUpAction(_ sender: Any) {
            if password.text! != passwordConfirm.text! {
                let alertController = UIAlertController(title: "Password Incorrect", message: "Please re-type password", preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
            }
            else{
                Auth.auth().createUser(withEmail: email.text!, password: password.text!){ (user, error) in
                    if error == nil {
                        self.performSegue(withIdentifier: "signupToHome", sender: self)
                    }
                    else{
                        let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                        let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                        
                        alertController.addAction(defaultAction)
                        self.present(alertController, animated: true, completion: nil)
                    }
                }
            }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.email.delegate = self as? UITextFieldDelegate
        self.password.delegate = self as? UITextFieldDelegate
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
    
