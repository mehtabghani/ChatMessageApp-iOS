//
//  ViewController.swift
//  MessageApp
//
//  Created by mehtab on 10/23/18.
//  Copyright © 2018 mehtab. All rights reserved.
//

import UIKit

struct ChatMessage {
    var text:String
    var isInComing: Bool
}

class ViewController: UITableViewController {
    
    fileprivate  let cellIdentifier = "cell-message"
    
    let messages = [
        ChatMessage(text: "That's my first message", isInComing: true),
        ChatMessage(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec porttitor at ipsum id hendrerit. Praesent porttitor pellentesque nunc, vel pulvinar dui blandit at. Vivamus lobortis libero nulla, ut sagittis lorem tempus sit amet", isInComing: false),
        ChatMessage(text: "Donec eu sapien sit amet quam porta semper et sed risus. Ut suscipit eros velit, id accumsan magna efficitur non. In hac habitasse platea dictumst. Nullam non euismod ligula. Sed nec est quam. Etiam quis vulputate elit. Integer gravida, ex nec placerat venenatis, massa massa sagittis tellus, ut laoreet enim justo tempor ligula. Aliquam convallis lectus magna, sed auctor enim finibus nec. Morbi et diam nulla.", isInComing: true),
        ChatMessage(text: "That's my first message", isInComing: false)
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
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ChatMessageCell
        
        cell.chatMessage = messages[indexPath.row]
        
        return cell
    }

}
