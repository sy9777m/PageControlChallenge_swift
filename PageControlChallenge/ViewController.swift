//
//  ViewController.swift
//  PageControlChallenge
//
//  Created by Siyun Min on 2020/07/11.
//  Copyright © 2020 Siyun Min. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var pageNumber: UILabel!
    @IBOutlet var pageController: UIPageControl!
    
    let pageNumList: [Int] = Array(1...10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pageController.numberOfPages = pageNumList.count
        pageController.currentPage = 0
        
        pageController.pageIndicatorTintColor = UIColor.red
        pageController.currentPageIndicatorTintColor = UIColor.green
        
        pageNumber.text = String(pageNumList[0])
    }

    @IBAction func pageChange(_ sender: UIPageControl) {
        pageNumber.text = String(pageController.currentPage + 1)
    }
    
}

