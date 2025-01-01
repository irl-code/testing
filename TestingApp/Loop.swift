//
//  Loop.swift
//  TestingApp
//
//  Created by Hamza Wahab on 01/01/2025.
//

import SwiftUI

struct Loop: View {
    var body: some View {
        NavigationView{
        ScrollView {
                ForEach(0..<20) { _ in
                        Text("Alhamdulillah")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .padding(.bottom, 15)
                    }
            }
        }
    }
}

#Preview {
    Loop()
}
