//
//  SecondViewController.swift
//  ViewController
//
//  Created by Cihan on 22.01.2024.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var labelSecond: UILabel!
    @IBOutlet weak var labelFoundedPassword: UILabel!
    
    var givenpassword =  ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelFoundedPassword.text = givenpassword
    }

}
