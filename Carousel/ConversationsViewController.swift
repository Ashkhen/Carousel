//
//  ConversationsViewController.swift
//  Carousel
//
//  Created by Ashkhen Sargsyan on 2/11/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onBackButton(sender: AnyObject) {
        navigationController?.popToRootViewControllerAnimated(true)
    }
}
