//
//  SecondViewController.swift
//  PassDataUsingDelegate
//
//  Created by duycuong on 4/17/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit


protocol SecondViewControllerDelegate: class {
    func sendDataToFirstVC(data: String?)
}

class SecondViewController: UIViewController {
    @IBOutlet weak var secondTextField: UITextField!
    
    weak var delegate: SecondViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        title = "SecondVC"
    }
    
    @IBAction func nextEndVC(_ sender: UIButton) {
        title = ""
        let vc = Storyboard.Main.endViewController()
        vc.delegate = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

extension SecondViewController: EndViewControllerDelegate {
    func delegateFromEnd(text: String?) {
        delegate?.sendDataToFirstVC(data: text)
    }
}
