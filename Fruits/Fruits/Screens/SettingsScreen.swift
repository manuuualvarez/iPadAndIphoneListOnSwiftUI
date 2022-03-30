//
//  SettingaScreen.swift
//  Fruits
//
//  Created by Manuel Alvarez on 29/03/2022.
//

import SwiftUI

struct SettingsScreen: View {
    //MARK: - Properties
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    //MARK: - View
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20){
                    //MARK: - SECTION 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", imageName: "info.circle")
                    ){
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholestorol. Fruits are sources of many essential nutriends, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                            
                        }//: HStack
                    }//: GroupBox
                    //MARK: - SECTION 2
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customize", imageName: "paintbrush")
                    ){
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    //MARK: - SECTION 3
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", imageName: "apps.iphone")
                    ) {
                        SettingsRowView(titleLabel: "Developer", valueLabel: "Manuel Alvarez")
                        SettingsRowView(titleLabel: "Compatibility", valueLabel: "iOS 14")
                        SettingsRowView(titleLabel: "LinkedIn", linkLabel: "manuelignacioalvarez", linkDestination: "linkedin.com/in/manuelignacioalvarez/")
                        SettingsRowView(titleLabel: "Github", linkLabel: "manuuualvarez", linkDestination: "github.com/manuuualvarez")
                        SettingsRowView(titleLabel: "Twitter", linkLabel: "@mmiialvarez", linkDestination: "twitter.com/mmiiaalvarez")
                        SettingsRowView(titleLabel: "Version", valueLabel: "1.0.0")
                        
                    }//: Group Box
                    
                }//:VStack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }){
                            Image(systemName: "xmark")
                        }
                
                )
                .padding()
            }//:Scroll
        }//:Navigation
    }
}

//MARK: - Preview
struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
