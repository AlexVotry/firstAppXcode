//
//  FirstTableViewController.swift
//  firstApp
//
//  Created by Alex Votry on 2/15/17.
//  Copyright © 2017 Alex Votry. All rights reserved.
//

import UIKit

class FirstTableViewController: UITableViewController {

    var sites: [Site]?
//    var sitePics: [UIImage]?

    override func viewDidLoad() {
        super.viewDidLoad()

        let site1 = Site()
        let site2 = Site()
        let site3 = Site()
        let site4 = Site()


       site1.name = "Team"
       site1.siteImage = #imageLiteral(resourceName: "Winners")
       site1.cellImage = #imageLiteral(resourceName: "team")

       site2.name = "Kale"
       site2.siteImage = #imageLiteral(resourceName: "ToshKale")
       site2.cellImage = #imageLiteral(resourceName: "Kim&Kale")

       site3.name = "Racing"
       site3.siteImage = #imageLiteral(resourceName: "oldTrack")
       site3.cellImage = #imageLiteral(resourceName: "trackRacing")

       site4.name = "Seattle"
       site4.siteImage = #imageLiteral(resourceName: "BlackFlag")
       site4.cellImage = #imageLiteral(resourceName: "CrazySeattle")

      sites = [site1, site2, site3, site4]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let totalRows = sites?.count {
            return totalRows
        }
        return 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "SiteCell", for: indexPath)
        let site = sites?[indexPath.row]
        // guard
        // ((cell.textLabel?.text = site?.name) != nil),
        // ((cell.imageView?.image = site?.cellImage) != nil)
        //  else {
        //     return
        // }
        if let s = site {
            cell.textLabel?.text = s.name
            if let img = s.cellImage {
              cell.imageView?.image = img
            }
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
        siteViewController?.site = sites?[indexPath.row]
        }
    }
}
