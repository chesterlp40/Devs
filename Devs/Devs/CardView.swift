//
//  CardView.swift
//  Devs
//
//  Created by Ezequiel Rasgido on 07/06/2022.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    
    var card: Card
    
    // MARK: - CARD
    
    var body: some View {
        ZStack {
            Image(card.imageName)
            
            VStack {
                Text(card.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Text(card.headline)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .italic()
                    
            }
            .offset(y: -218)
            
            Button(action: {
                print("Button was tapped")
                
                playSound("sound-chime", "mp3")
            }) {
                HStack {
                    Text(card.callToAction.uppercased())
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
                        colors: card.gradientColors,
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
                colors: card.gradientColors,
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
        CardView(card: cardData[4])
            .previewLayout(.sizeThatFits)
    }
}
