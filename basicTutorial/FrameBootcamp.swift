//
//  FrameBootcamp.swift
//  basicTutorial
//
//  Created by dasom kim on 2023/03/22.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Circle()
            .fill(
                LinearGradient(
                    gradient: Gradient(colors: [Color.indigo, Color.purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            .frame(width: 80, height: 80)
        
            .overlay(
                Image(systemName: "moon.stars")
                    .font(.system(size: 45))
                    .foregroundColor(Color.white)
            )
            
            .overlay(
                Circle()
                    .fill(Color.teal).opacity(0.9)
                    .frame(width: 30, height: 30)
                    .overlay(Text("2")
                        .font(.headline)
                        .foregroundColor(Color.white))
                ,alignment: .bottomTrailing
            )
        
//        Text("Hello, Summer!")
//            .background(Color.pink)
//
//            .frame(width: 150, height: 100, alignment: .trailing)
//            .background(Color.yellow)
//
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
//            .background(Color.indigo).opacity(0.5)
//
//            .overlay(
//                Circle().fill(Color.orange).frame(width: 200)
            //background는 아래로 stack되고 overlay는 뒤에 적었어도 위로 올라감
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
