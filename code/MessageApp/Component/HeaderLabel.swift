//  Created on 10/26/18.

import Foundation
import UIKit

class HeaderLabel: UILabel {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        textAlignment = .center
        textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        font = UIFont.systemFont(ofSize: 14.0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        let orignalSize = super.intrinsicContentSize
        let height = orignalSize.height + 10
        layer.cornerRadius = height/2
        layer.masksToBounds = true
        return CGSize(width: orignalSize.width + 15, height: height)
    }
    

}
