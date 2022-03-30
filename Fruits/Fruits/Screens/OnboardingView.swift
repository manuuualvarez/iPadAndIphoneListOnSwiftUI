//
//  OnboardingView.swift
//  Fruits
//
//  Created by Manuel Alvarez on 29/03/2022.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - Properties
    var fruits: [Fruit] = fruitsData
    
    //MARK: - View
    var body: some View {
        //TabView
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }//:ForEach
        }//:TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}
//MARK: - Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
            .previewDevice("iPhone 11 Pro")
    }
}
