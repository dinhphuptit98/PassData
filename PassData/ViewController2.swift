//
//  ViewController2.swift
//  PassData
//
//  Created by dinhphu98 on 5/20/18.
//  Copyright © 2018 dinhphu98. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var text2: UITextField!
    
    var b : String?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        text2.text = b
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        b = text2.text
    }
    
    
}
