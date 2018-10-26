//  Created on 10/26/18.

import Foundation

extension Date {
    
    static func dateFromCustomString(stringDate:String) -> Date {
        let formatter = DateFormatter();
        formatter.dateFormat = "MM/dd/yyyy"
        return formatter.date(from: stringDate) ?? Date()
    }
    
    static func getFormattedStringDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        let formattedDate = formatter.string(from: date)
        return formattedDate
    }
}

