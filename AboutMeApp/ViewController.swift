//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Leon Grubisic on 5/26/18.
//  Copyright © 2018 Leon Grubisic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fNameTextField: UITextField!
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func EnterButton(_ sender: Any) {
        self.performSegue(withIdentifier: "FirstSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FirstSegue" {
            let vc = segue.destination as! SecondViewController
            name = fNameTextField.text!
            vc.stringHolder = "Hello \(name)! \r\nMy name is Leon Grubisic. \r\nI built this app to serve as an application about me. \r\nIf you click the 'Next' button, you will be redirected to the view where you can find a little bit about me. \r\nEnjoy!"
        }
    }
}

