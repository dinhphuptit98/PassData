//
//  ViewController5.swift
//  PassData
//
//  Created by dinhphu on 5/20/18.
//  Copyright © 2018 dinhphu98. All rights reserved.
//

import UIKit

class ViewController5: UIViewController {

    
    
    @IBOutlet weak var text5: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? ViewController6 else { return }
        vc.onCompletion = { [weak self] (text) in
            self?.text5.text = text
        }
        vc.a = text5.text
    }
}
