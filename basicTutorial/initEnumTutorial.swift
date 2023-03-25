//
//  initEnumTutorial.swift
//  basicTutorial
//
//  Created by dasom kim on 2023/03/25.
//

import SwiftUI

struct initEnumTutorial: View {
        
        let colorBackground : Color
        let txt : String
        let numero: Int
        
 
        init(count: Int, fruit: Fruits ){
            
            self.numero = count
            
            if fruit == .banana{
                self.colorBackground = Color.yellow
                self.txt = "banana"
            } else if fruit == .apple{
                self.colorBackground = Color.red
                self.txt = "apple"
            } else{
                self.colorBackground = Color.purple
                self.txt = "grape"
            }
        }
        
        enum Fruits {
            case apple, banana, grape
        }
    
    var body : some View{
        VStack(spacing: 10){
            Text("\(txt)")
                .underline()
            Text("\(numero)")
               
            
        }.frame(width: 150, height: 100)
         .background(colorBackground)
         .cornerRadius(20)
         .foregroundColor(Color.white)
         .font(.headline)
    }
        
        

}

struct initEnumTutorial_Previews: PreviewProvider {
    static var previews: some View {
        HStack(spacing: 12){
            initEnumTutorial(count: 58, fruit: .banana)
            initEnumTutorial(count: 87, fruit: .grape)
        }
        
    }
}
