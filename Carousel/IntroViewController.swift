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
    
    let xOffsets : [Float] = [-70, 40, 20, 80, -120, -100]
    let yOffsets : [Float] = [-285, -240, -400, -380, -500, -480]
    let scales : [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
    let rotations : [Float] = [-10, -10, 10, 10, 10, -10]
    var images : [UIImageView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBarHidden = true
        
        introScrollView.delegate = self
        
        introScrollView.contentSize = imageView.image!.size
        
        images.append(introTile1)
        images.append(introTile2)
        images.append(introTile3)
        images.append(introTile4)
        images.append(introTile5)
        images.append(introTile6)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func scrollViewDidScroll(scrollView: UIScrollView) {
        let offset = scrollView.contentOffset.y
        
        for i in (0...5).reverse() {
            transformImage(offset, image: images[i], xOffset: xOffsets[i], yOffset: yOffsets[i], scale: scales[i], rotation: rotations[i])
        }
    }
    
    func transformImage(offset: CGFloat, image: UIImageView, xOffset: Float, yOffset: Float, scale: Float, rotation: Float) {
       // print("image: \(image), offset: \(offset), x: \(xOffset), y: \(yOffset), scale: \(scale), rotation: \(rotation)")
        let x = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(xOffset), r2Max: 0)
        let y = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(yOffset), r2Max: 0)
        
        let s = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(scale), r2Max: 1)
        let r = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(rotation), r2Max: 0)
        
        image.transform = CGAffineTransformMakeTranslation(CGFloat(x), CGFloat(y))
        image.transform = CGAffineTransformScale(image.transform, CGFloat(s), CGFloat(s))
        image.transform = CGAffineTransformRotate(image.transform, CGFloat(Double(r) * M_PI / 180))
    }

}

