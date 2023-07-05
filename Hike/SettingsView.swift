//
//  SettingsView.swift
//  Hike
//
//  Created by Amish on 05/07/2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80.0, weight: .black))
                    VStack(spacing: -10.0) {
                        Text("Hike")
                            .font(.system(size: 66.0, weight: .black))
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80.0, weight: .black))
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(colors: [Color(.colorGreenLight), Color(.colorGreenMedium), Color(.colorGreenDark)], startPoint: .top, endPoint: .bottom)
                )
                .padding(.top, 8.0)
                VStack(spacing: 8.0) {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    Text("The hike which looks gorgeous in photos but is even better once you actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundStyle(Color(.colorGreenMedium))
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16.0)
                .frame(maxWidth: .infinity)
            }
            .listRowSeparator(.hidden)
            Section {
//                LabeledContent("Application", value: "Hike")
                CustomListView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "Hike", rowTintColor: .blue)
                CustomListView(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS,iPadOS", rowTintColor: .red)
                CustomListView(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                CustomListView(rowLabel: "Version", rowIcon: "apps.iphone", rowContent: "Hike", rowTintColor: .blue)
                CustomListView(rowLabel: "Application", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                CustomListView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "Amish", rowTintColor: .mint)
                CustomListView(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Amish", rowTintColor: .pink)
                CustomListView(rowLabel: "Wesbite", rowIcon: "globe", rowTintColor: .pink, rowLinkLabel: "Apple", rowLinkDestination: "https://apple.com")
            } header: {
                Text("ABOUT THE MAP")
            } footer: {
                HStack {
                    Spacer()
                    Text("Copyright © All rights reserved.")
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}
