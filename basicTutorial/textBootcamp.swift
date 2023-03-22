//
//  textBootcamp.swift
//  basicTutorial
//
//  Created by dasom kim on 2023/03/20.
//

import SwiftUI

struct textBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.primary
                //Color(UIColor.secondarySystemBackground)
                Color("ColorPalette1")
                )
        //에셋에서 컬러 설정할 때 , 맨 오른쪽 뷰에서 다크모트 라이트모드에 상관없이 다 적용되게 설정할 수도 있다
            .shadow(color: Color("ColorPalette1").opacity(0.8)
                    ,radius: 10)
            .frame(width: 300, height: 150);
        
        Text("Hello, Summer!" .capitalized)
            .font(.system(size: 24, weight: .regular, design: .serif))
            .foregroundColor(.indigo)
            .multilineTextAlignment(.trailing)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.7)
    }
}

struct textBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        textBootcamp()
    }
}
