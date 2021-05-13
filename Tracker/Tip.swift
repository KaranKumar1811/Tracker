//
//  Tip.swift
//  Tracker
//
//  Created by Sandeep Jangra on 2021-05-12.
//

import Foundation
struct Tip: Decodable{
    let text: String
    let children: [Tip]?
    
    
}
