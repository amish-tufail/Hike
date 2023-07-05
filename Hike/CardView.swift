//
//  CardView.swift
//  Hike
//
//  Created by Amish on 05/07/2023.
//

import SwiftUI

struct CardView: View {
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowing: Bool = false
    
    func randomImage() {
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
        imageNumber = randomNumber
    }
    
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52.0))
                            .foregroundStyle(
                                LinearGradient(colors: [Color(.colorGrayLight), Color(.colorGrayMedium)], startPoint: .top, endPoint: .bottom)
                        )
                        Spacer()
                        Button {
                            isShowing.toggle()
                        } label: {
                            CustomButtonView()
                        }
                        .sheet(isPresented: $isShowing, content: {
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium, .large])
//                                .presentationCornerRadius(40.0)
                        })
                    }
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundStyle(Color(.colorGrayMedium))
                }
                .padding(.horizontal, 30.0)
                
                ZStack {
                    CustomCircleView()
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.easeOut, value: imageNumber)
                }
                Button {
                    randomImage()
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(colors: [Color(.colorGreenLight), Color(.colorGreenMedium)], startPoint: .top, endPoint: .bottom)
                        )
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1.0, y: 2.0)
                }
                .buttonStyle(GradientButton())
                
            }
        }
        .frame(width: 320.0, height: 570.0, alignment: .center)
    }
}

#Preview {
    CardView()
}
