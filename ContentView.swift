//
//  ContentView.swift
//  CalculatorSwiftUI
//
//  Created by UğurKırmacı on 7.01.2022.
//

import SwiftUI

struct ContentView: View {
    //Buttons dummy calculators
    let buttons = [
        ["7", "8", "9", "X"],
        ["4", "5", "6", "X"],
        ["1", "2", "3", "+"],
        ["0", ".", ".", "="]
    ]
    
    var body: some View {
        
        ZStack (alignment: .bottom) {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack(spacing: 12) {
                
                HStack {
                    Spacer()
                    //Result
                    Text("42").foregroundColor(.white)
                        .font(.system(size: 64))
                }.padding()
                
                
                ForEach(buttons, id: \.self) { row in
                    HStack (spacing: 12) {
                        ForEach(row, id: \.self) { button in
                            Text(button)
                                .font(.system(size: 32))
                                .frame(width: self.buttonWidth(), height: self.buttonWidth())
                                .foregroundColor(.white)
                                .background(Color.yellow)
                                .cornerRadius(40)
                        }
                    }
                }
            }.padding(.bottom)//iphone 8plus from the bottom
        }
    }
    
    func buttonWidth() -> CGFloat {
        return (UIScreen.main.bounds.width - 5 * 12) / 4
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
