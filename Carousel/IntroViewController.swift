//
//  IntroViewController.swift
//  Carousel
//
//  Created by Ashkhen Sargsyan on 2/9/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var introScrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var introTile1: UIImageView!
    @IBOutlet weak var introTile2: UIImageView!
    @IBOutlet weak var introTile3: UIImageView!
    @IBOutlet weak var introTile4: UIImageView!
    @IBOutlet weak var introTile5: UIImageView!
    @IBOutlet weak var introTile6: UIImageView!
    
    var introTile1Scale = CGFloat(1)
    var introTile1Rotate = CGAffineTransformMakeDegreeRotation(20)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        introScrollView.delegate = self
        
        introScrollView.contentSize = imageView.image!.size
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        
        //var scaleTransform = CGAffineTransformMakeScale(introTile1Scale, introTile1Scale)
        //var rotationTransform = CGAffineTransformMakeRotation(introTile1Rotate)
        //var transform = CGAffineTransformConcat(rotationTransform, scaleTransform)
        
        //introTile1Scale = introTile1Scale + 0.2
        //introTile1.transform = CGAffineTransformMakeScale(introTile1Scale, introTile1Scale)
        //introTile1Scale.transform = transform

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
