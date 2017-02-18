//
//  API.swift
//  firstApp
//
//  Created by Alex Votry on 2/17/17.
//  Copyright © 2017 Alex Votry. All rights reserved.
//

import Foundation

//let data: Data
//let json = try? JSONSerialization.jsonObject(with: Data, options: [])

let urlString = "https://data.seattle.gov/resource/y7iv-rz67.json"

//open func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Swift.Void) -> URLSessionDataTask {
//
//}



//let url = URL(string: urlString)
//URLSession.shared.dataTask(with:url!) { (data, response, error) in
//    if error != nil {
//        print(error)
//    } else {
//        do {
//
//            let parsedData = try JSONSerialization.jsonObject(with: data!, options: []) as! [String:Any]
//            let category = parsedData["category"] as! [String: Any]
//
//            print(category)
//
//            let neighborhood = parsedData["neighborhood"] as! [Sting: Any]
//            print(neighborhood)
//        } catch let error as NSError {
//            print(error)
//        }
//    }
//
//    }.resume()
//
//{
//    "category":"15th avenue residents",
//    "community_commercial":"community",
//    "council_district":"3",
//    "district":"East",
//    "email_contact":"15thave_community@yahoogroups.com","name":"15th Ave Community",
//    "neighborhood":"Capitol Hill",
//    "region":"E",
//    "type":"email list",
//    "url":"http://groups.yahoo.com/group/15thAve_Community/"
//  }
