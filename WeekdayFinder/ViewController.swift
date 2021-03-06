//
//  ViewController.swift
//  WeekdayFinder
//
//  Created by Arman on 21.09.2021.
//

import UIKit

class ViewController: UIViewController{


    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var monthTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func findDay(_ sender: UIButton) {
        guard let day = dateTF.text, let month = monthTF.text, let year = yearTF.text else{return}
        
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.day = Int(dateTF.text!)
        dateComponents.month = Int(monthTF.text!)
        dateComponents.year = Int(yearTF.text!)
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ru_Ru")
        dateFormatter.dateFormat = "EEEE"
        
        let date = calendar.date(from: dateComponents)
        
        let weekday = dateFormatter.string(from: date!)
        let capitalizedWeekday = weekday.capitalized
        
        resultLabel.text = capitalizedWeekday
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    } 
}

