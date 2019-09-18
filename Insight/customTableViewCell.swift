 //
//  customTableViewCell.swift
//  Insight
//
//  Created by HGPMAC78 on 7/15/19.
//  Copyright © 2019 HGPMAC78. All rights reserved.
//

import UIKit

class customTableViewCell: UITableViewCell {

  
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var heartColor: UIButton!
    
    
    @IBAction func favoritingButton(_ sender: Any) {
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
