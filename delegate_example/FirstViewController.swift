//
//  ViewController.swift
//  delegate_example
//
//  Created by Channat Tem on 11/14/17.
//  Copyright © 2017 Channat Tem. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, SecondViewControllerDelegate {

    @IBOutlet weak var changeText: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        }

    func didFinishedEditing(data: String) {
        changeText.setTitle(data, for: .normal)
    }
    
    @IBAction func changeTextButton(_ sender: UIButton) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondViewIdentifier" {
            let secondView: SecondViewController = segue.destination as! SecondViewController
            secondView.delegate = self
        }
    }
    


}

