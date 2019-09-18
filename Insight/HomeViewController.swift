//
//  HomeViewController.swift
//  Insight
//
//  Created by HGPMAC78 on 7/8/19.
//  Copyright © 2019 HGPMAC78. All rights reserved.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {
    
    var joke = ["My girlfriend told me she was leaving me because I keep pretending to be a Transformer. I said, No, wait! I can change.", "About a month before he died, my uncle had his back covered in lard. After that, he went down hill fast.", "A mexican magician was doing a magic trick. He said, Uno, Dose, and he disappeared without a trace"]
    var quote = ["Dont cry because it's over, smile because it happened.― Dr. Seuss", "Be yourself; everyone else is already taken.― Oscar Wilde", "You only live once, but if you do it right, once is enough.― Mae West"]
    var fortune = ["A beautiful, smart, and loving person will be coming into your life.", "A dubious friend may be an enemy in camouflage.", "A faithful friend is a strong defense."]
    var factoid = ["Banging your head against a wall for one hour burns 150 calories.", "Pteronophobia is the fear of being tickled by feathers.", "A flock of crows is known as a murder."]

//    let genreSelection =
    
    @IBOutlet weak var doseRevealOutlet: UILabel!
    
    @IBAction func doseRevealButton(_ sender: Any) {
            joke.shuffle();
            doseRevealOutlet.text = joke.popLast()!
    }
    
    
    
    @IBAction func logOutAction(_ sender: Any) {
        do {
            try Auth.auth().signOut()
        }
        catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let initial = storyboard.instantiateInitialViewController()
        UIApplication.shared.keyWindow?.rootViewController = initial
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}
