//
//  ViewController.swift
//  Test-OAS
//
//  Created by Frank Lehmann on 22.01.21.
//

import UIKit
import OpenAPIClient

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Loading"
        
        TestAPI.test { (object, error) in
            self.label.text = object?.property ?? error?.localizedDescription ?? "Error"            
        }
    }


}

