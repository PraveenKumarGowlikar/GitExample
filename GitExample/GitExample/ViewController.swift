//
//  ViewController.swift
//  GitExample
//
//  Created by laxman on 1/4/21.
//  Copyright © 2021 appminds. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        self.title = "Dashboard"

        showOnLabel(txt: "Hello World! Blah! Blah!")
        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) {
//
//            self.showOnLabel(txt: "Good Bye World! Blah! Blah!")
//        }
        
        var totalSeconds = 25
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
            
            if totalSeconds > 0 {
                                
                let zeroTxt = totalSeconds < 10 ? "0" : ""
                
                let str = """
                    Hello World! Blah! Blah!
                    \(zeroTxt)\(totalSeconds)
                """
                
                totalSeconds = totalSeconds - 1

                self.showOnLabel(txt: str)
                
            } else {
                
                Timer.invalidate()
                
                self.showOnLabel(txt: "Good Bye World! Blah! Blah!")
            }
        }
    }
        
    func showOnLabel(txt: String) {
        
        self.txtLbl.numberOfLines = 0
        
        self.txtLbl.text = txt
    }
}

