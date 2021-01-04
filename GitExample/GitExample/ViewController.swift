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
        
        showOnLabel(txt: "Hello World! Blah! Blah!")
    }
        
    func showOnLabel(txt: String) {
        
        print(txt)
        self.txtLbl.text = txt
    }
}

