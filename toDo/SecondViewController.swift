//
//  SecondViewController.swift
//  toDo
//
//  Created by Giovanni Rosas-Marin on 5/20/19.
//  Copyright © 2019 Codepath. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func addTask(_ sender: Any) {
        
        if(input.text != ""){
        
        list.append(input.text!)
            input.text = ""
    }
}

}
