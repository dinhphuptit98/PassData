//
//  ViewController4.swift
//  PassData
//
//  Created by dinhphu98 on 5/20/18.
//  Copyright © 2018 dinhphu98. All rights reserved.
//

import UIKit
protocol ViewController4Delegate : class {
    func passData(with string : String)
}
class ViewController4: UIViewController {
    var d : String?
    @IBOutlet weak var text4: UITextField!
    weak var delegate : ViewController4Delegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        text4.text = d
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
        delegate?.passData(with: text4.text!)
        navigationController?.popViewController(animated: true)
    }
    
}
