//
//  GeoDB.swift
//  TestWork
//
//  Created by Сергей Зайцев on 28.04.2021.
//

import Foundation


let headers = [
    "x-rapidapi-key": "809686f8f2msh989897468fa7fdep148311jsn51378cb517bb",
    "x-rapidapi-host": "wft-geo-db.p.rapidapi.com"
]

let request = NSMutableURLRequest(url: NSURL(string: "https://wft-geo-db.p.rapidapi.com/v1/geo/adminDivisions")! as URL,
                                        cachePolicy: .useProtocolCachePolicy,
                                    timeoutInterval: 10.0)
request.httpMethod = "GET"
request.allHTTPHeaderFields = headers

let session = URLSession.shared
let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
    if (error != nil) {
        print(error)
    } else {
        let httpResponse = response as? HTTPURLResponse
        print(httpResponse)
    }
})

dataTask.resume()
