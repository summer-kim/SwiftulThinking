//
//  buttonState.swift
//  basicTutorial
//
//  Created by dasom kim on 2023/03/26.
//

import SwiftUI

struct buttonState: View {
    
    @State var myTitle: String = "INDIGO"
    @State var viewBackground: Color = Color.indigo.opacity(0.7)
    
    var body: some View {
        
        VStack(spacing: 15){
            
            bigTitle(myTitle: $myTitle, viewBackground: $viewBackground)
            
            HStack(spacing: 10){
//                Button("pink"){
//                    self.viewBackground = Color.pink.opacity(0.6)
//                    self.myTitle = "pink".uppercased()
//                }
                Button(action: {
                    buttonAction(colorTo: Color.pink, colorName: "pink")
                }) {
                    circleButton(buttonColor: Color.pink)

                }
                Button(action: {
                    buttonAction(colorTo: Color.teal, colorName: "teal")
                }) {
                    circleButton(buttonColor: Color.teal)

                }
                Button(action: {
                    buttonAction(colorTo: Color.indigo, colorName: "indigo")
                }) {
                    circleButton(buttonColor: Color.indigo)
                }
            }
            
        }
    }
    
    
    func buttonAction (colorTo: Color, colorName: String) {
        self.viewBackground = colorTo.opacity(0.7)
        self.myTitle = colorName.uppercased()
    }
}

struct bigTitle: View{
    
    @Binding var myTitle: String
    @Binding var viewBackground: Color

    var body: some View{
        Text("\(myTitle)")
            .frame(width: 250, height:150)
            .background(viewBackground)
            .cornerRadius(20)
            .foregroundColor(Color.white)
            .font(.title)
    }
}


struct circleButton: View {
    
    var colorVar: Color
    
    init(buttonColor: Color) {
        colorVar = buttonColor
    }
    var body: some View{
        Circle()
           .fill(Color.white)
           .shadow(color: Color.gray.opacity(0.7), radius: 10)
           .frame(width: 50, height: 50)
           .overlay {
               Image(systemName: "heart.fill")
                   .font(.title)
                   .foregroundColor(colorVar.opacity(0.7))
           }
    }
    
}


struct buttonState_Previews: PreviewProvider {
    static var previews: some View {
        buttonState()
    }
}
