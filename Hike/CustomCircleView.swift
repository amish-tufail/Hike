//
//  CustomCircleView.swift
//  Hike
//
//  Created by Amish on 05/07/2023.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimateGradient: Bool = false
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(colors: [Color(.colorIndigoMedium), Color(.colorGreenMedium)], startPoint: isAnimateGradient ? .topLeading : .bottomLeading, endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing)
                )
                .onAppear {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        isAnimateGradient.toggle()
                    }
            }
            MotionAnimationView()
        }
        .frame(width: 256.0, height: 256.0)
        .mask(Circle())
        .drawingGroup()
    }
}

#Preview {
    CustomCircleView()
}
