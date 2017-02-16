//
//  MainViewController.swift
//  firstApp
//
//  Created by Alex Votry on 2/15/17.
//  Copyright © 2017 Alex Votry. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    //MARK: Properties
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var mainImage: UIImageView!

    var site: Site?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let s = site {
          mainLabel.text = s.name
          if let img = s.siteImage {
            mainImage.image = img
          }
        }
    }

    // MARK: Actions
    @IBAction func addToCart(_ sender: UIButton) -> Void {
        print("Button tapped")
    }

}
