//
//  Ultis.swift
//  Calendar
//
//  Created by Anh Tuan on 9/13/16.
//  Copyright © 2016 Anh Tuan. All rights reserved.
//

import UIKit

class Ultis: NSObject {
    static func getAllDayOfMonth() -> [DateObject] {
        var listDate = [DateObject]()
        
        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let comp = calendar.components([.Year, .Day , .Month, .Weekday], fromDate: date)
        listDate.append(DateObject(date: comp.day, weekDay: comp.weekday))
        var tmp = NSDate()
        let month = comp.month
        //back
        while true {
            tmp = tmp.dateByAddingTimeInterval(-24 * 60 * 60)
            let comp = calendar.components([.Year, .Day , .Month, .Weekday], fromDate: tmp)
            if comp.month != month {
                break
            }
            listDate.insert(DateObject(date: comp.day, weekDay: comp.weekday), atIndex: 0)
        }
        tmp = NSDate()
        while true {
            tmp = tmp.dateByAddingTimeInterval(24 * 60 * 60)
            let comp = calendar.components([.Year, .Day , .Month, .Weekday], fromDate: tmp)
            if comp.month != month {
                break
            }
            listDate.append(DateObject(date: comp.day, weekDay: comp.weekday))
        }
        return listDate
    }
}
