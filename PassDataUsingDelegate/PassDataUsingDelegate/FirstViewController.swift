//
//  ViewController.swift
//  PassDataUsingDelegate
//
//  Created by duycuong on 4/17/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, SecondViewControllerDelegate {
    @IBOutlet weak var firstReceivedDataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func sendDataToFirstVC(data: String?) {
        firstReceivedDataLabel.text = data
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "getDataSegue" {
            let secondVC: SecondViewController = segue.destination as! SecondViewController
            secondVC.delegate = self
        }
    }
    
}

