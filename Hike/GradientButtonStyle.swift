//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Amish on 05/07/2023.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.vertical)
            .padding(.horizontal, 30.0)
            .background(
                LinearGradient(colors: [Color(.colorGrayLight), Color(.colorGrayMedium)], startPoint: .top, endPoint: .bottom)
            )
            .clipShape(
                RoundedRectangle(cornerRadius: 40.0, style: .continuous)
            )
    }
}
