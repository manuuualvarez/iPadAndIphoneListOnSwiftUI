//
//  ContentView.swift
//  Fruits
//
//  Created by Manuel Alvarez on 29/03/2022.
//

import SwiftUI

struct ContentView: View {
    
//    MARK: - Properties
    @State private var isShowingSettings: Bool = false
    var fruits: [Fruit] = fruitsData
    
    //    MARK: - View
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: DetailScreen(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }){
                        Image(systemName: "slider.horizontal.3")
                    }//:Button
                    .sheet(isPresented: $isShowingSettings, content: {
                        SettingsScreen()
                    })
            )
        }//: Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//    MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
