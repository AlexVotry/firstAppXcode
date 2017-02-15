//
//  FirstTableViewController.swift
//  firstApp
//
//  Created by Alex Votry on 2/15/17.
//  Copyright © 2017 Alex Votry. All rights reserved.
//

import UIKit

class FirstTableViewController: UITableViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SiteCell", for: indexPath)
        
        cell.textLabel?.text = "text label"
        cell.imageView?.image = #imageLiteral(resourceName: "Kim&Kale")
        
        return cell
    }

}
