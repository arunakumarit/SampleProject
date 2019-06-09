//
//  ViewController.swift
//  StackViewsEx
//
//  Created by ArunaKumari on 13/03/19.
//  Copyright © 2019 ArunaKumari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        let formatter = DateFormatter()
//        formatter.dateFormat = "HH:mm"
//        let startTime = formatter.date(from: "03:01")
//        let endTime = formatter.date(from: "05:01")
//        self.printDatesBetweenInterval(startTime!,endTime!)
        var data = [{"id":1,"term_id":5,"type":"car"},{"id":2,"term_id":3,"type":"bike"},{"id":3,"term_id":6,"type":"car"}]
        
        var result = data.filter(function(e) {
            return [5, 6].includes(e.term_id) && e.type == 'car'
        });
        
        print(result)
    }
     func printDatesBetweenInterval(_ startDate: Date, _ endDate: Date) {
        var startDate = startDate
        let calendar = Calendar.current
        
        let fmt = DateFormatter()
        fmt.dateFormat = "HH:mm"
        
        while startDate <= endDate {
            print(fmt.string(from: startDate))
            startDate = calendar.date(byAdding: .hour, value: 1, to: startDate)!
        }
    }
    
     func dateFromString(_ dateString: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        return dateFormatter.date(from: dateString)!
    }

}



