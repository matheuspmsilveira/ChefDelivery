//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Matheus Silveira on 29/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationBarView()
                    .padding(.horizontal, 15)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 20) {
                        OrderTypeGridView()
                        CarouselTabView()
                        StoresContainerView()
                    }
                })
            }
        }
    }
}

#Preview {
    ContentView()
}
