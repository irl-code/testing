//
//  CircleView.swift
//  TestingApp
//
//  Created by Hamza Wahab on 01/01/2025.
//

import SwiftUI

struct CircleView: View {
    @State var name: String = ""
    var body: some View {
        
        RoundedRectangle(cornerRadius: 10)
            .foregroundStyle(.black.opacity(0.2))
            .frame(width: 350, height: 250)
            .overlay {
                VStack(alignment: .leading){
                    Text("Enter Name")
                    TextField("Enter your name", text: $name)
                        .padding(.all, 5)
                        .background(
                        )
                }
                .padding(.horizontal)
            }
        Button {
            // code
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
