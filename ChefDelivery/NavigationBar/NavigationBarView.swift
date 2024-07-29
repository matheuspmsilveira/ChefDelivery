//
//  NavigationBarView.swift
//  ChefDelivery
//
//  Created by Matheus Silveira on 29/07/24.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        HStack {
            Spacer()
            Button("R. Vergueiro, 3185") {
                
            }
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(.black)
            Spacer()
            Button(action: {}) {
                Image(systemName: "bell.badge")
                    .font(.title3)
                    .foregroundColor(.red)
            }
        }
    }
}

#Preview {
    NavigationBarView()
}
