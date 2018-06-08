//
//  ViewController.swift
//  PageTheScroll
//
//  Created by William Friedrich on 6/3/18.
//  Copyright © 2018 FriedrichWilliam. All rights reserved.
//

import UIKit
var images = [UIImageView]()

class ViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX = view.frame.midX + view.frame.size.width * CGFloat(x)
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: 0, y: view.frame.size.height / 2, width: 150, height: 150)
        }
    }



}

