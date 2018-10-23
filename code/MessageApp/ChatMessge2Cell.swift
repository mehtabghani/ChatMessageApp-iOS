//
//  ChatMessge2Cell.swift
//  MessageApp
//
//  Created by mehtab on 10/23/18.
//  Copyright © 2018 mehtab. All rights reserved.
//

import UIKit

class ChatMessge2Cell: UITableViewCell {

    
    @IBOutlet weak var lblText: UILabel!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
   
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
