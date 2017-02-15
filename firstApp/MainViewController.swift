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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainLabel.text = "My Pictures"
        mainImage.image = #imageLiteral(resourceName: "team")
    }

    // MARK: Actions
    @IBAction func addToCart(_ sender: UIButton) -> Void {
        print("Button tapped")
    }

}
