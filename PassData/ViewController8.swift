//
//  ViewController8.swift
//  PassData
//
//  Created by dinhphu on 5/20/18.
//  Copyright © 2018 dinhphu98. All rights reserved.
//

import UIKit
let myNotificationKey = "a"

class ViewController8: UIViewController {
    var b : String?
    @IBOutlet weak var text8: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self,selector: #selector(doThisWhenNotify),name: NSNotification.Name.init(rawValue: myNotificationKey),object: nil)
    }
    
    @objc func doThisWhenNotify() { print("I've sent a spark!") }
    
    @IBAction func postData(_ sender: UIButton) {
        NotificationCenter.default.post(name: Notification.Name.init(rawValue: myNotificationKey), object: self)
        text8.text = "aa"
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
   

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
    }
    
    
    
}
