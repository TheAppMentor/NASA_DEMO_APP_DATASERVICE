import Foundation

struct DateTimeManager {
    
    func getLastFiveDays() -> [Date] {
        let last5Days = (-4...0).map {
            return Calendar.current.date(byAdding: .day, value: $0, to: Date())!
        }
        return last5Days
    }
    
    func getDateString(date : Date, dateFormat : String) -> String {
        // Convert the Date to a String.
        let dateF = DateFormatter()
        dateF.dateFormat = dateFormat
        return dateF.string(from: date)
    }
}
