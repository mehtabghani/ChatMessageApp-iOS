//
//  ChatMessageCell.swift
//  MessageApp
//
//  Created by mehtab on 10/23/18.
//  Copyright © 2018 mehtab. All rights reserved.
//

import UIKit

class ChatMessageCell: UITableViewCell {

    //outlets
    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var bubbleBGView: UIView!
    
    //constraints
    
    /*
     Once the constraint got inactive, it got removed as result it will become nil
     For this reason 'bubbleLeadingConstraint' is strong
    */
    @IBOutlet  var bubbleLeadingConstraint: NSLayoutConstraint!
    
    //vars
    var chatMessage: ChatMessage! {
        didSet {
            bubbleBGView.backgroundColor = chatMessage.isInComing ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) : #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
            lblText?.text = chatMessage.text
            
            if chatMessage.isInComing {
                bubbleLeadingConstraint?.isActive = true
            }
            else {
                bubbleLeadingConstraint?.isActive = false
            }
        
            updateConstraintsIfNeeded()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        lblText?.text = "Place holder"
        bubbleBGView.layer.cornerRadius = 5
        backgroundColor = .clear
    }
    

    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
//    
}
