//
//  ExampleViewController.swift
//  Carousel
//
//  Created by Ashkhen Sargsyan on 2/14/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class ExampleViewController: UIViewController {

    @IBOutlet weak var box1: UIButton!
    @IBOutlet weak var box2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onCheckBox(sender: AnyObject) {
        box1.selected = !box1.selected
    }
    
    @IBAction func onXTap(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func onCheckBox2(sender: AnyObject) {
         box2.selected = !box2.selected
    }
}
