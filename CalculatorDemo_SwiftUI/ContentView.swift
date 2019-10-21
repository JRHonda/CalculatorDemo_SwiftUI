//
//  ContentView.swift
//  CalculatorDemo_SwiftUI
//
//  Created by Justin Honda on 10/11/19.
//  Copyright © 2019 Justin Honda. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            CalcButtonsLayoutSwiftUIView()
            
        }
    }
    
    func testFunc() -> Void {
        print("Hello")
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()//.environment(\.colorScheme, .dark)
    }
}

struct ResultsText: View {
    var body: some View {
        Text("Results")
            .multilineTextAlignment(.center)
    }
}


