//
//  ContentView.swift
//  Calculator
//
//  Created by 潮伟钦 on 2020/12/9.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CalculatorButtonPad()
//        CalculatorButtonRow(row: [.digit(1), .digit(2)])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CalculatorButton : View {
    let size: CGSize = CGSize(width: 50, height: 50)
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
                .frame(width: size.width, height: size.height, alignment: .center)
                .background(Color(bgColorName))
                .cornerRadius(10)
        })
    }
}

struct CalculatorButtonRow: View {
    let row: [CalculatorButtonItem]
    
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

struct CalculatorButtonPad: View {
    let pad : [[CalculatorButtonItem]] = [
        [.digit(7), .digit(8), .digit(9), .operation(.multiply)],
        [.digit(4), .digit(5), .digit(6), .operation(.minus)],
        [.digit(1), .digit(2), .digit(3), .operation(.plus)],
        [.digit(0), .digit(0), .dot , .equal],
    ]
    
    var body: some View {
        VStack(spacing: 8, content: {
            ForEach(pad, id: \.self) { row in
                CalculatorButtonRow(row: row)
            }
        })
    }
    
}
