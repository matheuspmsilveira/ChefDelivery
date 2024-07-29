//
//  CarouselTabView.swift
//  ChefDelivery
//
//  Created by Matheus Silveira on 29/07/24.
//

import SwiftUI

struct CarouselTabView: View {
    var body: some View {
        TabView {
            ForEach(bannersMock) { banner in
                CarouselItemView(banner: banner)
            }
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    CarouselTabView()
}
