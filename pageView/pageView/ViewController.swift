//
//  ViewController.swift
//  pageView
//
//  Created by Bertuğ YILMAZ on 31/05/2017.
//  Copyright © 2017 bertug. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var pageController: UIPageControl!
    @IBOutlet weak var nextPageBtn: UIButton!
    @IBOutlet weak var prevPageBtn: UIButton!
    
    var content : String!
    var pageIndex : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionLabel.text = content
        pageController.currentPage = pageIndex
        
        nextPageBtn.isHidden = (pageIndex == 2) ? true : false
        prevPageBtn.isHidden = (pageIndex == 0) ? true : false
    }
    @IBAction func prevButtonTapped(_ sender: Any) {
        print("Previous Page")
        let pageViewController = self.parent as! PageViewController
        pageViewController.prevPageNavigator(pageIndex)
    }
    @IBAction func nextButtonTapped(_ sender: Any) {
        print("Next Page")
        let pageViewController = self.parent as! PageViewController
        pageViewController.nextPageNavigator(pageIndex)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

