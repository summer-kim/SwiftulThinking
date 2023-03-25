//
//  stackTutorial.swift
//  basicTutorial
//
//  Created by dasom kim on 2023/03/22.
//

import SwiftUI

struct stackTutorial: View {
    var body: some View {
        HStack(spacing: 10, content: {
            ZStack{
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            ZStack{
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            ZStack{
                Rectangle()
                    .frame(width: 100, height: 100)
            }
        })
        .background(Color.teal)
    }
}

struct stackTutorial_Previews: PreviewProvider {
    static var previews: some View {
        stackTutorial()
    }
}
