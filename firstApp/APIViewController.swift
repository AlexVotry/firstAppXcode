//
//  APIViewController.swift
//  firstApp
//
//  Created by Alex Votry on 2/17/17.
//  Copyright © 2017 Alex Votry. All rights reserved.
//

import UIKit

class APIViewController: UIViewController {

    @IBOutlet weak var apiData: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let todoEndpoint: String = "https://jsonplaceholder.typicode.com/todos/1"
        guard let url = URL(string: todoEndpoint) else {
            print("Error: cannot create URL")
            return
        }
        let urlRequest = URLRequest(url: url)

        let session = URLSession.shared

        let task = session.dataTask(with: urlRequest) { data, response, error in
          guard error == nil else {
            print("error calling GET on /todos/1")
            print(error)
            return
          }

          guard let responseData = data else {
            print("Error: did not receive data")
            return
          }
          do {
            guard let todo = try JSONSerialization.jsonObject(with: responseData, options: []) as? [String: Any] else {
              print("error trying to convert data to JSON")
              return
            }
             print("the todo is: \(todo.description)")

            guard let todoTitle = todo["title"] as? String else {
              print("Could not get todo title from JSON")
              return
            }
          } catch {
            print("error trying to convert data to JSON")
            return
          }
        }
        apiData.text = "waiting to convert data onto view"
        task.resume()
    }

}
