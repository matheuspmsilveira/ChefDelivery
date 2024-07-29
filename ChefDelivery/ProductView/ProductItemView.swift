//
//  ProductItemView.swift
//  ChefDelivery
//
//  Created by Matheus Silveira on 29/07/24.
//

import SwiftUI

struct ProductItemView: View {
    
    let product: ProductType

    var body: some View {
        HStack(spacing: 8) {
            VStack(alignment: .leading, spacing: 8) {
                Text(product.name)
                    .bold()
                
                Text(product.description)
                    .foregroundColor(.black.opacity(0.5))
                    .multilineTextAlignment(.leading)
                
                Text("\(product.formettedPrice)")
            }
            
            Spacer()
            
            Image(product.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(12)
                .frame(width: 120, height: 120)
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.3), radius: 20, x: 6, y: 8)
        }
        .padding()
        .foregroundColor(.black)
    }
}

#Preview {
    ProductItemView(product: storesMock[0].products[0])
}
