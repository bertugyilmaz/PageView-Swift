//
//  PageViewController.swift
//  pageView
//
//  Created by Bertuğ YILMAZ on 31/05/2017.
//  Copyright © 2017 bertug. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    var PageTitle: NSArray = NSArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        PageTitle = ["Hello World!", "Hello Everybody!", "Hello"]
        
        self.dataSource = self

        self.setViewControllers([getViewControllerAtIndex(0)] as [UIViewController], direction: UIPageViewControllerNavigationDirection.forward, animated: false, completion: nil)
        
    }
    // -UIPageViewControllerDataSource Methods
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?
    {
        let pageContent : ViewController = viewController as! ViewController
        
        var index = pageContent.pageIndex
        
        if (index == 0) || (index == NSNotFound) {
            print("pageViewController-before")
            return nil
        }
        index -= 1;
        
        return getViewControllerAtIndex(index)
    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
    {
        let pageContent : ViewController = viewController as! ViewController
        
        var index = pageContent.pageIndex
        
        if index == NSNotFound {
            print("pageViewController-after")
            return nil
        }
        index += 1;
        
        if index == PageTitle.count {
            return nil
        }
        
        return getViewControllerAtIndex(index)
    }
    // -Others Methods
    func getViewControllerAtIndex(_ index:NSInteger) -> ViewController {
        let pageContent = self.storyboard?.instantiateViewController(withIdentifier: "pageContentView") as! ViewController
        
        pageContent.content = "\(PageTitle)"
        pageContent.pageIndex = index
        
        return pageContent
    }
    
}
