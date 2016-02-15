//
//  CreateViewController.swift
//  Carousel
//
//  Created by Ashkhen Sargsyan on 2/14/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var createScrollView: UIScrollView!
    @IBOutlet weak var checkBoxButton: UIButton!
    @IBOutlet weak var buttonParentView: UIView!
    
    var buttonParentInitial: CGFloat!
    var buttonParentOffset: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createScrollView.delegate = self
        createScrollView.contentSize = createScrollView.frame.size
        createScrollView.contentInset.bottom = 60
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        buttonParentInitial = buttonParentView.frame.origin.y
        buttonParentOffset = -160
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        // Move the button up above keyboard
        buttonParentView.frame.origin.y = buttonParentInitial + buttonParentOffset
        // Scroll the scrollview up
        createScrollView.contentOffset.y = createScrollView.contentInset.bottom    }
    
    func keyboardWillHide(notification: NSNotification!) {
        buttonParentView.frame.origin.y = buttonParentInitial
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        if createScrollView.contentOffset.y <= -50 {
            view.endEditing(true)
        }
    }

    @IBAction func onBoxTap(sender: AnyObject) {
        checkBoxButton.selected = !checkBoxButton.selected
    }
}
