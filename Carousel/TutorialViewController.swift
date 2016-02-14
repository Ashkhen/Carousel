//
//  TutorialViewController.swift
//  Carousel
//
//  Created by Ashkhen Sargsyan on 2/10/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var tutorialScrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var backupButton: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tutorialScrollView.delegate = self
        tutorialScrollView.contentSize = CGSize(width: 1280, height: 568)
        backupButton.alpha = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        // Get the current page based on the scroll offset
        let page : Int = Int(round(tutorialScrollView.contentOffset.x / 320))
        pageControl.currentPage = page
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        if page == 3 {
            pageControl.hidden = true
            UIView.animateWithDuration(0.9, animations: {
                self.backupButton.alpha = 1
                }, completion: nil)
            
        } else {
            UIView.animateWithDuration(0.3, animations: {
                self.backupButton.alpha = 0
                }, completion: nil)
            pageControl.hidden = false
        }
        
    }

    @IBAction func onTakeSpin(sender: AnyObject) {
        performSegueWithIdentifier("toTimeLineNavSegue", sender: nil)
    }
}
