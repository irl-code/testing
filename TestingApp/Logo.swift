//
//  Logo.swift
//  TestingApp
//
//  Created by Hamza Wahab on 01/01/2025.
//

import SwiftUI

struct Logo: View {
    @State var isLove: Bool = false
    var body: some View {
        VStack{
            Button {
                isLove.toggle()
            } label: {
                Image(systemName: "heart.fill")
                    .resizable()
                    .frame(width: 45, height: 40)
            }
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(Color.gray.opacity(0.4))
            
                .overlay(
                    ZStack{
                        if isLove {
                            Text("I Love You!")
                                .foregroundStyle(Color.red)
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .shadow(color: Color.red.opacity(1.0), radius: 30, x: 5, y: -5)
                                .shadow(color: Color.red.opacity(1.0), radius: 30, x: -5, y: 5)
                        }
                    }
                    
                        // code
                )
            
                .padding()
        }
        .padding(.top, 50)
        
    }
}

#Preview {
    Logo()
}
