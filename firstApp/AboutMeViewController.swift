//
//  AboutMeViewController.swift
//  firstApp
//
//  Created by Alex Votry on 2/15/17.
//  Copyright © 2017 Alex Votry. All rights reserved.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(scrollView)
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        scrollView.contentSize = CGSize(width: 375, height: 1000 )
    }

}
