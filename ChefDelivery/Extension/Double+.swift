//
//  Double+.swift
//  ChefDelivery
//
//  Created by Matheus Silveira on 29/07/24.
//

import Foundation

extension Double {
    func formatPrice() -> String {
        let formattedString = String(format: "%.2f", self)
        return formattedString.replacingOccurrences(of: ".", with: ",")
    }
}
