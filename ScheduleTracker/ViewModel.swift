//
//  ViewModel.swift
//  ScheduleTracker
//
//  Created by M1029313 on 20/01/21.
//

import Foundation

protocol ViewModelDelegate{
    func eventUpdated()
}

class ViewModel {
    var delegate: ViewModelDelegate?
    var eventList = [String]()
    
    func dateSelected(selectedDate:Date) {
        eventList = [String]()
        for data in jsonData {
            let date = convertStringToDate(dateString: data.date!)
            if compareDate(date1: date, date2: selectedDate) {
                //eventList.append(data.event! + "  @ ", +data.date!)
                eventList.append("\(data.event!)  @ \(data.date!)")
            }
        }
        
        delegate?.eventUpdated()
    }
    
    func convertStringToDate(dateString:String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        let date = dateFormatter.date(from:dateString)!
        return date
    }
    
    func compareDate(date1:Date, date2:Date) -> Bool {
        let calanderDate1 = Calendar.current.dateComponents([.day, .year, .month], from: date1)
        let calanderDate2 = Calendar.current.dateComponents([.day, .year, .month], from: date2)
        if calanderDate1.day == calanderDate2.day && calanderDate1.month == calanderDate2.month && calanderDate1.year == calanderDate2.year {
            return true
        }
        return false
    }
}
