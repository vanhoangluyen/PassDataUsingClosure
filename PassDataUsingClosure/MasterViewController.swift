//
//  ViewController.swift
//  PassDataUsingClosure
//
//  Created by Hoang Luyen on 3/28/18.
//  Copyright © 2018 Hoang Luyen. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {
    @IBOutlet weak var callBackTextField: UILabel!
    
    var callBack: ((String?) -> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        callBack = { [unowned self] text in
            self.callBackTextField.text = text
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailViewController = segue.destination as? DetailViewController {
            detailViewController.callBack = callBack
        }
    }
}

