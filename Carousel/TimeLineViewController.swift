//
//  TimeLineViewController.swift
//  Carousel
//
//  Created by Ashkhen Sargsyan on 2/11/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class TimeLineViewController: UIViewController {

    @IBOutlet weak var timeLineScrollView: UIScrollView!
    @IBOutlet weak var feedView: UIImageView!
    @IBOutlet weak var bannerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBarHidden = true
        
        timeLineScrollView.contentSize = CGSizeMake(320, feedView.image!.size.height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onBubbleTap(sender: AnyObject) {
        performSegueWithIdentifier("goToConvoSegue", sender: nil)
    }
    @IBAction func onLearnButton(sender: AnyObject) {
        performSegueWithIdentifier("goToExampleSegue", sender: nil)
    }
    @IBAction func onCloseTap(sender: AnyObject) {
        UIView.animateWithDuration(0.9) {
            self.bannerView.hidden = true
        }
    }
}
