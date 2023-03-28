//
//  buttonState.swift
//  basicTutorial
//
//  Created by dasom kim on 2023/03/26.
//

import SwiftUI

struct buttonState: View {
    
    @State var myTitle: String = "INDIGO"
    @State var viewBackground: Color = Color.indigo
    
    var body: some View {
        VStack(spacing: 15){
            Text("\(myTitle)")
                .frame(width: 250, height:150)
                .background(viewBackground)
                .cornerRadius(20)
                .foregroundColor(Color.white)
                .font(.title)
            HStack(spacing: 10){
//                Button("pink"){
//                    self.viewBackground = Color.pink.opacity(0.6)
//                    self.myTitle = "pink".uppercased()
//                }
                Button(action: {
                    self.viewBackground = Color.pink.opacity(0.7)
                    self.myTitle = "pink".uppercased()
                }) {
                    Circle()
                        //.background(Color.white)
                        .fill(Color.white)
                        .shadow(color: Color.gray.opacity(0.7), radius: 10)
                        .frame(width: 50, height: 50)
                        .overlay {
                            Image(systemName: "heart.fill")
                                .font(.title)
                                .foregroundColor(Color.pink.opacity(0.7))
                        }
                }
                Button(action: {
                    self.viewBackground = Color.teal.opacity(0.7)
                    self.myTitle = "teal".uppercased()
                }) {
                    Circle()
                        //.background(Color.white)
                        .fill(Color.white)
                        .shadow(color: Color.gray.opacity(0.7), radius: 10)
                        .frame(width: 50, height: 50)
                        .overlay {
                            Image(systemName: "heart.fill")
                                .font(.title)
                                .foregroundColor(Color.teal.opacity(0.7))
                        }
                }
                Button(action: {
                    self.viewBackground = Color.indigo.opacity(0.7)
                    self.myTitle = "indigo".uppercased()
                }) {
                    Circle()
                        //.background(Color.white)
                        .fill(Color.white)
                        .shadow(color: Color.gray.opacity(0.7), radius: 10)
                        .frame(width: 50, height: 50)
                        .overlay {
                            Image(systemName: "heart.fill")
                                .font(.title)
                                .foregroundColor(Color.indigo.opacity(0.7))
                        }
                }
            }
            
        }
    }
}

struct buttonState_Previews: PreviewProvider {
    static var previews: some View {
        buttonState()
    }
}
