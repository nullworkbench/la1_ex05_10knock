//
//  CountViewController.swift
//  10knock
//
//  Created by nullworkbench on 2021/01/31.
//

import UIKit

class CountViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var number: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func plus() {
        number += 1
        label.text = String(number)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
