//
//  CustomListView.swift
//  Hike
//
//  Created by Amish on 06/07/2023.
//

import SwiftUI

struct CustomListView: View {
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    @State var rowLinkLabel: String?
    @State var rowLinkDestination: String?
    var body: some View {
        LabeledContent {
            if rowContent != nil {
                Text(rowContent!)
                    .foregroundStyle(.primary)
                    .fontWeight(.heavy)
            } else if (rowLinkLabel != nil && rowLinkDestination != nil) {
                Link(rowLinkLabel!, destination: URL(string: rowLinkDestination!)!)
                    .foregroundStyle(.pink)
                    .fontWeight(.heavy)
            } else {
                EmptyView()
            }
        } label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8.0, style: .continuous)
                        .frame(width: 30.0, height: 30.0, alignment: .center)
                        .foregroundStyle(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }

    }
}

#Preview {
    CustomListView(rowLabel: "Designer", rowIcon: "paint palette", rowContent: "Amish", rowTintColor: .pink)
}
