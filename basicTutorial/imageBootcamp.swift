//
//  imageBootcamp.swift
//  basicTutorial
//
//  Created by dasom kim on 2023/03/20.
//

import SwiftUI

struct imageBootcamp: View {
    var body: some View {
        //Image(systemName: "play.fill") 아이콘 불러오는법
        Image("fleurflottante_label")
            .resizable()
            //.aspectRatio(contentMode: .fill)
            .scaledToFill() //윗줄이랑 동일한 말
            .frame(width: 150, height: 300)
            .clipped()
            .foregroundColor(.red)//에셋에서 설정을 Template으로 렌더링된다 설정하지 않으면 renderingmode를 설정하는 코드를 따로 넣어줘야한다.
            //.cornerRadius(30)
//            .clipShape(
//                //Circle()
//                Ellipse()
//            )
            
    }
}

struct imageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        imageBootcamp()
    }
}
