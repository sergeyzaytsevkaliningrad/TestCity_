//
//  City.swift
//  TestWork
//
//  Created by Rudolf Oganesyan on 28.04.2021.
//

import Foundation

struct ResponseData: Codable {
var data: [City]
}

struct City: Codable {
var city: String
var country: String
var id: Int
var population: Int
var countryCode: String
var wikiDataId: String
}
