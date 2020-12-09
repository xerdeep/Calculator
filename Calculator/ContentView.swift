//
//  ContentView.swift
//  Calculator
//
//  Created by 潮伟钦 on 2020/12/9.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hi")
            .font(.system(size: 20))
            .foregroundColor(.white)
            .frame(width: 30, height: 50, alignment: .center)
            .background(Color("operatorBackground"))
            .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
