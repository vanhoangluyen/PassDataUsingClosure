//
//  DetailViewController.swift
//  PassDataUsingClosure
//
//  Created by Hoang Luyen on 3/28/18.
//  Copyright © 2018 Hoang Luyen. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var inputTextField: UITextField!
    
    var callBack: ((String?) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func saveAction(_ sender: UIBarButtonItem) {
        callBack?(inputTextField.text)
        navigationController?.popToRootViewController(animated: true)
    }
    
}
