//
//  SecondViewController.swift
//  PassDataUsingDelegate
//
//  Created by duycuong on 4/17/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit


protocol SecondViewControllerDelegate {
    func sendDataToFirstVC(data: String?)
}

class SecondViewController: UIViewController {
    @IBOutlet weak var secondTextField: UITextField!
    
    var delegate: SecondViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func sendData(_ sender: UIButton) {
        if delegate != nil && secondTextField.text != nil {
            let dataForSend = secondTextField.text
            delegate?.sendDataToFirstVC(data: dataForSend)
            dismiss(animated: true, completion: nil)
        }
    }
    
}
