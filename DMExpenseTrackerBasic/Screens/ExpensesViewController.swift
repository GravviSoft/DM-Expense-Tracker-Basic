//
//  ExpensesViewController.swift
//  DMExpenseTrackerBasic
//
//  Created by David Ruvinskiy on 3/28/23.
//

import UIKit

class ExpensesViewController: UIViewController {
    
    @IBOutlet weak var expenseLabel: UILabel!
    
    @IBOutlet weak var expenseTable: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        expenseTable.dataSource = self
        expenseLabel.text = DataController.expenseTotalLabel
        expenseTable.register(UINib(nibName: "ExpenseDataCell", bundle: nil), forCellReuseIdentifier: Constants.expenseReuseID)
    }
}

extension ExpensesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataController.expenseData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.expenseReuseID, for: indexPath) as! ExpenseDataCell
        cell.expenseTitle.text = DataController.expenseData[indexPath.row].title
        cell.expenseAmount.text = "$\(String(DataController.expenseData[indexPath.row].amount))"
        return cell
    }
}
