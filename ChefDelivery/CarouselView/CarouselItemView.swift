//
//  CarouselItemView.swift
//  ChefDelivery
//
//  Created by Matheus Silveira on 29/07/24.
//

import SwiftUI

struct CarouselItemView: View {
    let banner: BannerType
    
    var body: some View {
        Image(banner.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview {
    CarouselItemView(banner: BannerType(id: 1, image: "barbecue-banner"))
}
