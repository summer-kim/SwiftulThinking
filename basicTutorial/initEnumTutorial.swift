//
//  initEnumTutorial.swift
//  basicTutorial
//
//  Created by dasom kim on 2023/03/25.
//

import SwiftUI

struct initEnumTutorial: View {
        
    let colorBackground : Color
    let targetColor: ColorName
        
 
    init(num: Int){
        if num % 5 == 0{
            self.targetColor = .indigo
            self.colorBackground = .indigo
        } else if num % 5 == 1{
            self.targetColor = .teal
            self.colorBackground = .teal
        } else if num % 5 == 2{
            self.targetColor = .mint
            self.colorBackground = .mint
        } else if num % 5 == 3{
            self.targetColor = .pink
            self.colorBackground = .pink
        } else{
            self.targetColor = .yellow
            self.colorBackground = .yellow
        }
        
    }
    
    enum ColorName: String {
        case indigo = "INDIGO"
        case teal = "TEAL"
        case mint = "MINT"
        case pink = "PINK"
        case yellow = "YELLOW"
    }
    
    var body : some View{
        VStack(spacing: 10){
            Text(targetColor.rawValue)
                .font(.title2)

        }.frame(width: 150, height: 100)
         .background(colorBackground )
         .cornerRadius(20)
         //.foregroundColor(Color.white)
         .padding(5)
         .opacity(0.6)
         
    }
        
        

}

struct initEnumTutorial_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView{
            LazyVStack{
                ForEach(0..<20){ i in
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHStack{
                            ForEach(0..<20){ j in
                                let randomN = Int.random(in: (0...100))
                                initEnumTutorial(num: randomN)
                            }
                        }
                    }
                    
                }
            }
        }
        
    }
}
