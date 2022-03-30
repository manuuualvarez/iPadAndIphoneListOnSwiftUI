//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Manuel Alvarez on 30/03/2022.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: - Properties
    var titleLabel: String
    var valueLabel: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    //MARK: - View
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(titleLabel).foregroundColor(Color.gray)
                Spacer()
                if (valueLabel != nil) {
                    Text(valueLabel!)
                } else if (linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }//:HStack
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(titleLabel: "Developer", valueLabel: "Manuel Alvarez")
                .previewLayout(.sizeThatFits)
                .padding()
            SettingsRowView(titleLabel: "Linkedin", linkLabel: "", linkDestination: "www.linkedin.com/in/manuelignacioalvarez/")
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}


