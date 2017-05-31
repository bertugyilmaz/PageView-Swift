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
    
    var content : String!
    var pageIndex : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionLabel.text = content
        pageController.currentPage = pageIndex
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

