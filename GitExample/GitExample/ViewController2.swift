//
//  ViewController2.swift
//  GitExample
//
//  Created by laxman on 1/4/21.
//  Copyright © 2021 appminds. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "Home"
    }
    
    
    @IBAction func navigate_Btn_Action(_ sender: Any) {
        
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        
        let vwCtrl = storyBoard.instantiateViewController(identifier: "ViewController")
        
        self.navigationController?.pushViewController(vwCtrl, animated: true)
    }
}
