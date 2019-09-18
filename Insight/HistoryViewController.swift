//
//  HistoryViewController.swift
//  Insight
//
//  Created by HGPMAC78 on 7/11/19.
//  Copyright © 2019 HGPMAC78. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
//    struct MyVariables {
//        static var doseHistory = doseRevealOutlet.text
//        //            static var doseHistoryDate = [""]
//    }
    
    
//    @IBAction func favoriteButton(_ sender: Any) {
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! customTableViewCell
//        cell.mainLabel.text = doseHistory
//        cell.dateLabel.text = doseHistoryDate
//
//        doseHistory.text
//
//        doseHistory.append("1234")
//        doseHistoryDate.append()
        //cell?.detailTextLabel!.text = "Details"
        
        
        return cell
    }
    
//    @IBOutlet weak var favortingButton: UIButton!
//    
//    favoritingButton.backgroundColor = .red
//    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
