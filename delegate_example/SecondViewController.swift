//
//  SecondViewController.swift
//  delegate_example
//
//  Created by Channat Tem on 11/14/17.
//  Copyright © 2017 Channat Tem. All rights reserved.
//

import UIKit

protocol SecondViewControllerDelegate {
    func didFinishedEditing(data: String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var editTextField: UITextField!
    
    var delegate: SecondViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func didTouchSendButton(_ sender: UIButton) {
        
        if delegate != nil {
            if editTextField.text != nil {
                let data = editTextField.text
                delegate?.didFinishedEditing(data: data!)
                dismiss(animated: true, completion: nil)
            }
        }
    }
    
    

    

}


