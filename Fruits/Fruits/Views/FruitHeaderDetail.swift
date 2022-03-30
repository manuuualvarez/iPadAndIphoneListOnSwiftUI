//
//  FruitHeaderDetail.swift
//  Fruits
//
//  Created by Manuel Alvarez on 29/03/2022.
//

import SwiftUI

struct FruitHeaderDetail: View {
    //MARK: - Properties
    var fruit: Fruit
    @State private var isAnimatingImage: Bool = false
    //MARK: - View
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }//:ZStack
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)){
                isAnimatingImage = true
            }
        }
    }
}
//MARK: - Preview
struct FruitHeaderDetail_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderDetail(fruit: fruitsData[5])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
