//
//  Product.swift
//  E-Commerce
//
//  Created by Nguyen Quang Ha on 12/10/2022.
//

import SwiftUI

struct Product: Identifiable, Hashable {
    var id = UUID().uuidString
    var type: ProductType
    var title: String
    var subtitle: String
    var description: String = ""
    var price: String
    var productImage: String = ""
    var quantity: Int = 1
}

enum ProductType: String, CaseIterable {
    case Wearable = "Wearable"
    case Laptops = "Laptops"
    case Phones = "Phones"
    case Tablets = "Tablets"
}
