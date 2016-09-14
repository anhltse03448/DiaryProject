import UIKit

class DateObject : NSObject {
    var date : Int?
    var weekDay : Int?
    init(date : Int , weekDay : Int) {
        self.date = date
        self.weekDay = weekDay
    }
}