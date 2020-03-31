---
path: "/onboarding-xcode-swift"
cover: "thumbnails/flutter.png"
date: "2020-03-30"
title: "Membuat Onboarding Screen pada iOS menggunakan Xcode & Swift"
tags: ['flutter']
published: true
---
Saya pemula, tidak ada salahnya jika saya share. 

jadi begini

buat project di xcode seperti biasa. 

selanjutnya 

buatlah UI di story board seperti berikut. 


code di layoutnya akan seperti berikut

```swift
//
//  ViewController.swift
//  run
//
//  Created by Ihwan ID on 30/03/20.
//  Copyright © 2020 Ihwan ID. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIScrollViewDelegate{

    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    var scrollWidth: CGFloat! = 0.0
    var scrollHeight: CGFloat! = 0.0
    
    var titles = ["CHALLENGE","COMPARE","WIN"]
    var descs = ["Challenge your friends, and prove yourself to be a best runner in your community.","Compare your challenge progress with extraordinary leaderboards","Win the challenge and share your achievements"]
    var imgs = ["challenge","compare","win"]
    
    //get dynamic width and height of scrollview and save it
    override func viewDidLayoutSubviews() {
        scrollWidth = scrollView.frame.size.width
        scrollHeight = scrollView.frame.size.height
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.layoutIfNeeded()
        //to call viewDidLayoutSubviews() and get dynamic width and height of scrollview

        self.scrollView.delegate = self
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        
        guard let customFont = UIFont(name: "CooperHewitt-BoldItalic", size: 24) else {
            fatalError("""
                Failed to load the "CooperHewitt-BoldItalic" font.
                Make sure the font file is included in the project and the font name is spelled correctly.
                """
            )
        }
        
    

        //crete the slides and add them
        var frame = CGRect(x: 0, y: 0, width: 0, height: 0)

        for index in 0..<titles.count {
            frame.origin.x = scrollWidth * CGFloat(index)
            frame.size = CGSize(width: scrollWidth, height: scrollHeight)

            let slide = UIView(frame: frame)

            //subviews
            let imageView = UIImageView.init(image: UIImage.init(named: imgs[index]))
            imageView.frame = CGRect(x:0,y:0,width:300,height:300)
            imageView.contentMode = .scaleAspectFit
            imageView.center = CGPoint(x:scrollWidth/2,y: scrollHeight/2 - 50)
          
            let txt1 = UILabel.init(frame: CGRect(x:32,y:imageView.frame.maxY+30,width:scrollWidth-64,height:30))
            txt1.textAlignment = .center
            txt1.font = UIFontMetrics.default.scaledFont(for: customFont)
            txt1.text = titles[index]
            txt1.textColor = UIColor(red: 149/255.0, green: 35/255.0, blue: 167/255.0, alpha: 1.0)

            let txt2 = UILabel.init(frame: CGRect(x:32,y:txt1.frame.maxY+10,width:scrollWidth-64,height:50))
            txt2.textAlignment = .center
            txt2.numberOfLines = 3
            txt2.font = UIFont.systemFont(ofSize: 18.0)
            txt2.text = descs[index]

            slide.addSubview(imageView)
            slide.addSubview(txt1)
            slide.addSubview(txt2)
            scrollView.addSubview(slide)

        }

        //set width of scrollview to accomodate all the slides
        scrollView.contentSize = CGSize(width: scrollWidth * CGFloat(titles.count), height: scrollHeight)

        //disable vertical scroll/bounce
        self.scrollView.contentSize.height = 1.0

        //initial state
        pageControl.numberOfPages = titles.count
        pageControl.currentPage = 0
    }

    
    @IBAction func pageChanged(_ sender: Any) {
        scrollView!.scrollRectToVisible(CGRect(x: scrollWidth * CGFloat ((pageControl?.currentPage)!), y: 0, width: scrollWidth, height: scrollHeight), animated: true)
        }

        func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            setIndiactorForCurrentPage()
        }

        func setIndiactorForCurrentPage()  {
            let page = (scrollView?.contentOffset.x)!/scrollWidth
            pageControl?.currentPage = Int(page)
        }
    
    

}
```
