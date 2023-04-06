//
//  Navi_animationCamp.swift
//  basicTutorial
//
//  Created by dasom kim on 2023/04/03.
//

import SwiftUI

struct Navi_animationCamp: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 15){
                HStack(alignment: .bottom, spacing: 10){
                        NavigationLink(
                            destination: OtherPage1()) {
                                Image(systemName: "heart.fill")
                            }
                        NavigationLink(
                            destination: OtherPage2()) {
                                Image(systemName: "heart")
                            }
            
                }
            
            }
                
            
        }.navigationTitle("Tout le monde")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(false)
        
       
    }
}

struct OtherPage1: View{
    
    @State var isAnimated: Bool = false
    
    var body: some View{
        Button(action: {
            isAnimated.toggle()
        }, label: {
            Image(systemName: "star.fill")
                .foregroundColor(Color.pink.opacity(0.5))
        })
        Spacer()
        RoundedRectangle(cornerRadius: 20)
            .fill(isAnimated ? Color.pink : Color.indigo)
            .frame(width:300, height: 200)
            .overlay {
                Text("Navigation 1")
                    .foregroundColor(Color.white)
            }
            .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
            .offset( y: isAnimated ? -200 : 0)
            .animation(.default, value: isAnimated)
            
            
    }
}

struct OtherPage2: View{
    var body: some View{
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.indigo)
            .frame(width:300, height: 200)
    }
}

struct Navi_animationCamp_Previews: PreviewProvider {
    static var previews: some View {
        Navi_animationCamp()
    }
}
