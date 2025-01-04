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
            RoundedRectangle(cornerRadius: 30)
                .foregroundStyle(.gray.opacity(0.3))
                .overlay(
                    VStack {
                        HStack{
                            Button {
                                // code
                            } label: {
                                Image(systemName: "xmark.circle.fill")
                                    .foregroundStyle(.black)
                                    .font(.title)
                                
                            }
                            Spacer()
                        }
                        .padding()
                        Spacer()
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .frame(
                                width: isLove ? 100 : 200, height: isLove ? 100 : 200
                            )
                            .foregroundStyle(isLove ? Color(#colorLiteral(red: 0.004859850742, green: 0.09608627111, blue: 0.5749928951, alpha: 1)) : Color(#colorLiteral(red: 1, green: 0.2527923882, blue: 1, alpha: 1)))
                            .padding(.bottom, 270)
                    }
                    )
                Button("Switch Color"){
                    isLove.toggle()
                }
                    .foregroundStyle(.white)
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding()
                    .padding(.horizontal)
                    .background(
                        isLove ? Color.blue.opacity(1.0) : Color.blue.opacity(0.5)
                    )
                    .cornerRadius(10)
                    .padding()
        }
        .padding()
    }

}

#Preview {
    Logo()
}
