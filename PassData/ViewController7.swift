//
//  ViewController7.swift
//  PassData
//
//  Created by dinhphu on 5/20/18.
//  Copyright © 2018 dinhphu98. All rights reserved.
//

import UIKit

class ViewController7: UIViewController {
    var a : String?
    @IBOutlet weak var lbNa: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self,selector: #selector(doSomethingAfterNotified),name: NSNotification.Name.init(rawValue: myNotificationKey),object: nil)
    }

    @objc func doSomethingAfterNotified() {
        print("I've been notified")
        lbNa.text = "Damn, I feel your spark 😱"
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
