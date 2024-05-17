//
//  HomeView.swift
//  Restart
//
//  Created by Himanshu.61086168 on 16/05/24.
//

import SwiftUI

struct HomeView: View {
    // MARK: - PROPERTY
    
    // MARK: - BODY
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            // MARK: - HEADER
            
            Spacer()
            ZStack {
                CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
            } //HEADER
            
            
            // MARK: - CENTER
            Text("The time that leads to mastery is dependent on the intensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            // MARK: - FOOTER
            Spacer()
            
            Button (action:{
                isOnboardingViewActive = true
            }) {
               Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart ")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }  //: BUTTON
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)

//            ZStack {
//                Capsule()
//                    .fill(.colorBlue)
//                HStack(spacing:10) {
//                    Image(systemName: "repeat.circle")
//                        .font(.system(size: 24, weight: .bold))
//                        .foregroundStyle(.white)
//                        
//                        
//                    Text("Restart")
//                        .font(.title2)
//                        .fontWeight(.bold)
//                        .foregroundStyle(.white)
//                }
//            }
//            .frame(width: 180 ,height: 60)
//            .onTapGesture {
//                isOnboardingViewActive = true
//            }
            
        } //: VSTACK
    }
}

#Preview {
    HomeView()
}
