//
//  CardView.swift
//  Devs
//
//  Created by Ezequiel Rasgido on 07/06/2022.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    
    let gradient = [
        Color("Color01"),
        Color("Color02")
    ]
    
    // MARK: - CARD
    
    var body: some View {
        ZStack {
            Image("developer-no3")
            
            VStack {
                Text("SwiftUI")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Text("Better apps. Less code.")
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .italic()
                    
            }
            .offset(y: -218)
            
            Button(action: {
                print("Button was tapped")
            }) {
                HStack {
                    Text("Learn".uppercased())
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .accentColor(Color.white)
                    
                    Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .accentColor(Color.white)
                }
                .padding(.vertical)
                .padding(.horizontal, 24)
                .background(
                    LinearGradient(
                        colors: gradient,
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .clipShape(Capsule())
                .shadow(
                    color: Color("ColorShadow"),
                    radius: 6,
                    x: 0,
                    y: 3
                )
            }
            .offset(y: 210)
        }
        .frame(width: 335, height: 545)
        .background(
            LinearGradient(
                colors: gradient,
                startPoint: .top,
                endPoint: .bottom
            )
        )
        .cornerRadius(16)
        .shadow(radius: 8)
    }
}

// MARK: - PREVIEW

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .previewLayout(.sizeThatFits)
    }
}
