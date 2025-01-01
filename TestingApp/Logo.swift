//
//  Logo.swift
//  TestingApp
//
//  Created by Hamza Wahab on 01/01/2025.
//

import SwiftUI

struct Logo: View {
    var body: some View {
        Image(systemName: "drop.fill")
            .resizable()
            .frame(width: 50, height: 80)
            .foregroundStyle(Color.blue.opacity(0.7))
            .shadow(color: Color.blue.opacity(1), radius: 10, x: -5, y: 5)
            .shadow(color: Color.blue.opacity(1), radius: 10, x: 5, y: -5)
    }
}

#Preview {
    Logo()
}
