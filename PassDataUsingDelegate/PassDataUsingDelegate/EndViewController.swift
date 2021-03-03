//
//  EndViewController.swift
//  PassDataUsingDelegate
//
//  Created by Dang Duy Cuong on 3/3/21.
//  Copyright © 2021 duycuong. All rights reserved.
//

import UIKit

protocol EndViewControllerDelegate: class {
    func delegateFromEnd(text: String?)
}

class EndViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    weak var delegate: EndViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        nameTextField.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        title = "Tram cuoi"
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        delegate?.delegateFromEnd(text: nameTextField.text)
        navigationController?.popToRootViewController(animated: true)
        return true
    }
}
