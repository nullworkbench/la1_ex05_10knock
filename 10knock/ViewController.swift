//
//  ViewController.swift
//  10knock
//
//  Created by nullworkbench on 2021/01/31.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    
    let programArray: [String] = ["Count", "Timer", "Cebu", "TableView", "TableView2", "Memo", "Login"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return programArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        cell?.textLabel?.text = programArray[indexPath.row]
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let targetViewController = self.storyboard!.instantiateViewController(withIdentifier: programArray[indexPath.row])
        
        self.show(targetViewController, sender: nil)
    }

}

