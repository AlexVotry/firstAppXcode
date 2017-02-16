//
//  FirstTableViewController.swift
//  firstApp
//
//  Created by Alex Votry on 2/15/17.
//  Copyright © 2017 Alex Votry. All rights reserved.
//

import UIKit

class FirstTableViewController: UITableViewController {

    var siteNames: [String]?
//    var sitePics: [Ob]?

    override func viewDidLoad() {
        super.viewDidLoad()
          siteNames = ["team", "Kim&Kale", "Winners", "Crazy Seattle"]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let totalRows = siteNames?.count {
            return totalRows
        }
        return 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "SiteCell", for: indexPath)
        let siteName = siteNames?[indexPath.row]

        if let cellName = siteName {
            cell.textLabel?.text = cellName
//            cell.imageView?.image = siteName.image
        }
        return cell
    }
    // prepare is the function for segue between tableView and viewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowSite" { // this is the identifier in Storyboard seque identifer
            let siteViewController = segue.destination as? MainViewController
//            siteViewController?.siteName = "Really Cool"  <-- this shows same string in every cell
        guard
          let cell = sender as? UITableViewCell,
          let indexPath = tableView.indexPath(for: cell)
         else {
            return
        }
        siteViewController?.siteName = siteNames?[indexPath.row]
        }
    }
}
