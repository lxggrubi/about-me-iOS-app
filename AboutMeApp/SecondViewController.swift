//
//  SecondViewController.swift
//  AboutMeApp
//
//  Created by Leon Grubisic on 5/26/18.
//  Copyright © 2018 Leon Grubisic. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var textLabel: UITextView!
    var stringHolder:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = stringHolder
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func MoveToNext(_ sender: Any) {
        performSegue(withIdentifier: "SecondSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    @IBAction func AboutButton(_ sender: Any) {
        self.performSegue(withIdentifier: "AboutSegue", sender: self)
    }
    
    @IBAction func HomeButton(_ sender: Any) {
        self.performSegue(withIdentifier: "HomeSegue", sender: self)
    }
    
    @IBAction func DevButton(_ sender: Any) {
        self.performSegue(withIdentifier: "DevSegue", sender: self)
    }
    
    @IBAction func EduButton(_ sender: Any) {
        self.performSegue(withIdentifier: "EduSegue", sender: self)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
