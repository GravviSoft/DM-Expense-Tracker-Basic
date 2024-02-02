//
//  ExpenseDataCell.swift
//  DMExpenseTrackerBasic
//
//  Created by Beau Enslow on 2/1/24.
//

import UIKit

class ExpenseDataCell: UITableViewCell {

    @IBOutlet weak var expenseTitle: UILabel!
    
    @IBOutlet weak var expenseAmount: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
