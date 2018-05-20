//
//  TableViewCell.swift
//  PassData
//
//  Created by dinhphu98 on 5/20/18.
//  Copyright © 2018 dinhphu98. All rights reserved.
//

import UIKit
protocol TableViewCellDelegate : class {
    func getData(with string : String , at indexPath : IndexPath)
}
class TableViewCell: UITableViewCell {
    @IBOutlet weak var textCell: UITextField!
    weak var delegate : TableViewCellDelegate?
    var indexPath : IndexPath!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func set(with indexPath: IndexPath, name: String) {
        self.indexPath = indexPath
        textCell.text = name
    }
    @IBAction func saveData(_ sender: UIButton) {
        delegate?.getData(with: textCell.text! , at: indexPath)
        textCell.resignFirstResponder()
    }
}
