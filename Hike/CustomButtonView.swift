//
//  CustomButtonView.swift
//  Hike
//
//  Created by Amish on 05/07/2023.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(colors: [Color.white, Color(.colorGreenLight), Color(.colorGreenMedium)], startPoint: .top, endPoint: .bottom)
                )
            Circle()
                .stroke(
                    LinearGradient(colors: [Color(.colorGrayLight), Color(.colorGrayMedium)], startPoint: .top, endPoint: .bottom), lineWidth: 4.0
                )
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30.0))
                .foregroundStyle(
                    LinearGradient(colors: [Color(.colorGrayLight), Color(.colorGrayMedium)], startPoint: .top, endPoint: .bottom)
                )
        }
        .frame(width: 58.0, height: 58.0)
    }
}

#Preview {
    CustomButtonView()
}
