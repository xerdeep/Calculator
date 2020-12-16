//
//  ContentView.swift
//  Calculator
//
//  Created by 潮伟钦 on 2020/12/9.
//

import SwiftUI

struct ContentView: View {
    let row: [CalculatorButtonItem] = [
        .digit(1), .digit(2), .digit(3), .operation(.plus)
    ]
    var body: some View {
        HStack {
            ForEach(row.indices) { index in
                CalculatorButton(text: row[index].text, bgColorName: row[index].bgColorName, call: {
                    print("Button:\(row[index].text)");
                })
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CalculatorButton : View {
    let size: CGSize = CGSize(width: 50, height: 80)
    let text: String
    let textSize: Float = 20
    let bgColorName: String
    let call: () -> Void
    
    var body: some View {
        Button(action: {
            print("Button!")
        }, label: {
            Text(text)
                .font(.system(size: 20))
                .foregroundColor(.white)
                .frame(width: 30, height: 50, alignment: .center)
                .background(Color("operatorBackground"))
                .cornerRadius(10)
        })
    }
}
