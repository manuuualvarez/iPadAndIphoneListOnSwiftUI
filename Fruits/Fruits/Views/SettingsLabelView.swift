//
//  SettingsLabelView.swift
//  Fruits
//
//  Created by Manuel Alvarez on 29/03/2022.
//

import SwiftUI

struct SettingsLabelView: View {
    
    //MARK: - Properties
    var labelText: String
    var imageName: String
    //MARK: - View
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: imageName)
        }//:HStack
    }
}
//MARK: - Preview
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", imageName: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
