//
//  ViewController.swift
//  TableViewInViewContrll
//
//  Created by Đừng xóa on 7/21/18.
//  Copyright © 2018 Đừng xóa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    var array: [Int] = [1, 2, 3]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = String(array[indexPath.row])
        return cell
    }

}

