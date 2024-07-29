//
//  StoreDetailView.swift
//  ChefDelivery
//
//  Created by Matheus Silveira on 29/07/24.
//

import SwiftUI

struct StoreDetailView: View {
    
    let store: StoreType
    @Environment(\.dismiss) var dismissView
    @State private var selectedProduct: ProductType?
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                Image(store.headerImage)
                    .resizable()
                    .scaledToFit()
                
                HStack {
                    Text(store.name)
                        .font(.title)
                        .bold()
                    
                    Spacer()
                    
                    Image(store.logoImage)
                }
                .padding(.vertical, 8)
                .padding(.horizontal)
                
                HStack {
                    Text(store.location)
                    
                    Spacer()
                    
                    ForEach(1...store.stars, id: \.self) { _ in
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                            .font(.caption)
                    }
                }
                .padding(.vertical, 8)
                .padding(.horizontal)
                
                Text("Produtos")
                    .font(.title2)
                    .bold()
                    .padding()
                
                ForEach(store.products) { product in
                    Button(action: {
                        selectedProduct = product
                    }, label: {
                        ProductItemView(product: product)
                    })
                    .sheet(item: $selectedProduct) { product in
                        ProductDetailView(product: product)
                    }
                }
            }
            .navigationTitle(store.name)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden()
            .toolbar() {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        dismissView()
                    }, label: {
                        HStack(spacing: 4) {
                            Image(systemName: "cart")
                            
                            Text("Lojas")
                        }
                        .foregroundColor(Color("ColorRed"))
                    })
                }
            }
        }
    }
}

#Preview {
    StoreDetailView(store: storesMock[0])
}
