//
//  CircleView.swift
//  TestingApp
//
//  Created by Hamza Wahab on 01/01/2025.
//

import SwiftUI

struct CircleView: View {
    @State var name: String = ""
    @State var isSignedUp: Bool = false
    var body: some View {
        
        RoundedRectangle(cornerRadius: 10)
            .foregroundStyle(.black.opacity(0.2))
            .frame(width: 350, height: 250)
            .overlay {
                if isSignedUp {
                    Text("Successfully signed up!")
                       // .font(.headline)
                        .font(.system(size: 25))
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding(.all, 10)
                        .padding(.horizontal, 5)
                        .background(
                            Color.white.opacity(0.7).cornerRadius(10)
                        )
                }
            }
        Button {
            isSignedUp.toggle()
        } label: {
            Text("sign up".uppercased())
                .foregroundStyle(.white)
                .font(.headline)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity)
                .padding(.all, 10)
                .background(Color.blue.cornerRadius(10))
                .padding(.horizontal)
                .padding(.top, 20)
                
        }

        
    }
}

#Preview {
    CircleView()
}
