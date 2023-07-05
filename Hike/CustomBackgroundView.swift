//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Amish on 05/07/2023.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            Color(.colorGreenDark)
                .clipShape(
                    RoundedRectangle(cornerRadius: 40.0, style: .continuous)
                )
                .offset(y: 10.0)
            Color(.colorGreenLight)
                .clipShape(
                    RoundedRectangle(cornerRadius: 40.0, style: .continuous)
                )
                .offset(y: 3.0)
                .opacity(0.85)
            
            LinearGradient(colors: [Color(.colorGreenLight), Color(.colorGreenMedium)], startPoint: .top, endPoint: .bottom)
                .clipShape(
                    RoundedRectangle(cornerRadius: 40.0, style: .continuous)
                )
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
