//
//  GeoDB.swift
//  TestWork
//
//  Created by Сергей Зайцев on 28.04.2021.
//

import Foundation

final class GeoDB {
    
    let headers = [
        "x-rapidapi-key": "809686f8f2msh989897468fa7fdep148311jsn51378cb517bb",
        "x-rapidapi-host": "wft-geo-db.p.rapidapi.com"
    ]
    
    let request = NSMutableURLRequest(url: NSURL(string: "https://wft-geo-db.p.rapidapi.com/v1/geo/cities")! as URL,
                                      cachePolicy: .useProtocolCachePolicy,
                                      timeoutInterval: 10.0)
    func requestHttpMethod(completion: @escaping ([City])  -> Void){
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                print(error)
            } else {
                guard let data = data else {
                    completion([])
                    return
                }
                guard let cities = try? JSONDecoder().decode(ResponseData.self, from: data) else {
                    completion([])
                    return
                }
                completion(cities.data)
            }
        })
        
        dataTask.resume()
    }
}
