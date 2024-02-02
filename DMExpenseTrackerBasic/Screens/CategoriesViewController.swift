//
//  CategoriesViewController.swift
//  DMExpenseTrackerBasic
//
//  Created by David Ruvinskiy on 3/27/23.
//

import UIKit


class CategoriesViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    let categories = Array(DataController.configureTableView())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
}

extension CategoriesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(categories)
        return categories.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.categoryReuseID, for: indexPath)
        cell.textLabel?.text = categories[indexPath.row]
        return cell
    }
}

extension CategoriesViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "ExpenseSegue", sender: self)
        print(DataController.initializeExpenseData(cat: categories[indexPath.row]))
        
    }
}

