//
//  ViewController.swift
//  MessageApp
//
//  Created by mehtab on 10/23/18.
//  Copyright © 2018 mehtab. All rights reserved.
//

import UIKit


class ViewController: UITableViewController {
    
    fileprivate  let cellIdentifier = "cell-message"
    
    let messages = [
        [
            ChatMessage(text: "That's my first message", isInComing: true, date: Date.dateFromCustomString(stringDate: "10/01/2018")),
            ChatMessage(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec porttitor at ipsum id hendrerit. Praesent porttitor pellentesque nunc, vel pulvinar dui blandit at.", isInComing: false, date: Date.dateFromCustomString(stringDate: "10/01/2018")),
            ],
        [
            ChatMessage(text: "Donec eu sapien sit amet quam porta semper et sed risus. Ut suscipit eros velit, id accumsan magna efficitur non. In hac habitasse platea dictumst. Nullam non euismod ligula. Sed nec est quam. Etiam quis vulputate elit.", isInComing: true, date: Date.dateFromCustomString(stringDate: "10/05/2018")),
            ChatMessage(text: "That's my first message", isInComing: false, date: Date.dateFromCustomString(stringDate: "10/05/2018")),
          ],
        [
            ChatMessage(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec porttitor at ipsum id hendrerit.", isInComing: false, date: Date.dateFromCustomString(stringDate: "10/07/2018")),
            ChatMessage(text: "Donec eu sapien sit amet quam porta semper et sed risus. Ut suscipit eros velit, id accumsan magna efficitur non. In hac habitasse platea dictumst.", isInComing: true, date: Date.dateFromCustomString(stringDate: "10/07/2018"))
        ]
    ]


    override func viewDidLoad() {
        super.viewDidLoad()
        //self.title = "Message"
        navigationItem.title = "Message"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.estimatedRowHeight = 20; // set to whatever your "average" cell height is
        tableView.rowHeight = UITableViewAutomaticDimension
        
        tableView.register(UINib.init(nibName: "ChatMessageCell", bundle: nil), forCellReuseIdentifier: cellIdentifier)
        
        tableView.backgroundColor = UIColor(white: 0.95, alpha: 1.0)
        tableView.separatorStyle = .none

        //not working need to check
      //tableView.register(ChatMessge2Cell.self, forCellReuseIdentifier: cellIdentifier)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }

}

extension ViewController  {
    //section
    override func numberOfSections(in tableView: UITableView) -> Int {
        return messages.count
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
      
        let label = HeaderLabel()
        if let firstMessageInSection = messages[section].first {
            label.text = Date.getFormattedStringDate(firstMessageInSection.date)
        }
        
        let containerView = UIView()
        containerView.backgroundColor = .clear
        containerView.addSubview(label)
        
        //making label center on x and y axis
        label.translatesAutoresizingMaskIntoConstraints = false //setting constraints from code
        label.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true

        return containerView;
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50.0
    }
    
    //cell
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ChatMessageCell
        let section = messages[indexPath.section]
        let row = section[indexPath.row]
        cell.chatMessage = row
        
        return cell
    }

}
