//
//  TimerViewController.swift
//  10knock
//
//  Created by nullworkbench on 2021/01/31.
//

import UIKit

class TimerViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var sec: Float = 0.00
    
    var timer: Timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @objc func up() {
        sec += 0.01
        label.text = String(format: "%.2f", sec)
    }
    
    @IBAction func start() {
        if !timer.isValid {
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(self.up), userInfo: nil, repeats: true)
        }
    }
    
    @IBAction func stop() {
        if timer.isValid {
            timer.invalidate()
        }
    }
    
    @IBAction func reset() {
        if timer.isValid {
            timer.invalidate()
        }
        
        sec = 0.00
        label.text = String(format: "%.2f", sec)
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
