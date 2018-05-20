//
//  ViewController6.swift
//  PassData
//
//  Created by dinhphu on 5/20/18.
//  Copyright © 2018 dinhphu98. All rights reserved.
//

import UIKit

class ViewController6: UIViewController {
    var a : String?
    @IBOutlet weak var text6: UITextField!
    
    var onCompletion: ((_ string: String) -> ())?
    override func viewDidLoad() {
        super.viewDidLoad()
        text6.text = a
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func save(_ sender: UIButton) {
        onCompletion!(text6.text!)
        navigationController?.popViewController(animated: true)
    }
}
