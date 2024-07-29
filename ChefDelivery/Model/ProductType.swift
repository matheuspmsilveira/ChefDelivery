//
//  ProductType.swift
//  ChefDelivery
//
//  Created by Matheus Silveira on 29/07/24.
//

import Foundation

struct ProductType: Identifiable {
    let id: Int
    let name: String
    let description: String
    let image: String
    let price: Double
    
    var formettedPrice: String {
        return "R$" + price.formatPrice()
    }
}
