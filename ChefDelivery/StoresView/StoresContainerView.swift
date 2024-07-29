//
//  StoresContainerView.swift
//  ChefDelivery
//
//  Created by Matheus Silveira on 29/07/24.
//

import SwiftUI

struct StoresContainerView: View {
    let title = "Lojas"

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            
            VStack(alignment: .leading, spacing: 30) {
                ForEach(storesMock) { store in
                    NavigationLink(destination: StoreDetailView(store: store)) {
                        StoreItemView(store: store)
                    }
                }
            }
            .foregroundColor(.black)
        }
        .padding(20)
    }
}

#Preview {
    StoresContainerView()
}
