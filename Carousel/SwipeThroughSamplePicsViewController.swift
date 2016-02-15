//
//  SwipeThroughSamplePicsViewController.swift
//  Carousel
//
//  Created by Ashkhen Sargsyan on 2/14/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class SwipeThroughSamplePicsViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var sharingUIView: UIView!
    @IBOutlet weak var threeImageScrollView:UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        threeImageScrollView.delegate = self
        threeImageScrollView.contentSize = CGSize(width: 960, height: 568)
        
        firstImage.image = UIImage(named: "sample1")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onShareTap(sender: AnyObject) {
        var share = [AnyObject]()
        share.append(firstImage.image!)
        
        let a = UIActivityViewController(activityItems: share, applicationActivities: nil)
        presentViewController(a, animated: true, completion: nil)
    }
    
    @IBAction func onBack(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
