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
    
    @IBOutlet weak var bubbleLeadingConstraint: NSLayoutConstraint!
    
    //vars
    var chatMessage: ChatMessage! {
        didSet {
            bubbleBGView.backgroundColor = chatMessage.isInComing ? .white : .green
            lblText?.text = chatMessage.text
            
            if chatMessage.isInComing {
                bubbleLeadingConstraint?.isActive = true
            }
            else {
                bubbleLeadingConstraint?.isActive = false
            }
            
            layoutIfNeeded()
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
