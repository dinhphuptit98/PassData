//
//  ViewController.swift
//  PassData
//
//  Created by dinhphu98 on 5/20/18.
//  Copyright © 2018 dinhphu98. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text1: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? ViewController2
        vc?.b = text1.text
    }
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        let vc2 = unwindSegue.source as? ViewController2
        text1.text = vc2?.b
    }
}

