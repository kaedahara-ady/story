//
//  RandomData.swift
//  uiKitTestPrjct1
//
//  Created by OverPowerPWND Keeper83 on 21/9/22.
//

import Foundation
import UIKit

struct RandomData: Codable {
    let results: [User]
}

struct User: Codable {
    var name: Name
}


struct Name: Codable {
    var first: String
    var last: String
}


