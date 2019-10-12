//
//  CalcButtonSwiftUIView.swift
//  CalculatorDemo_SwiftUI
//
//  Created by Justin Honda on 10/11/19.
//  Copyright © 2019 Justin Honda. All rights reserved.
//

import SwiftUI

public struct CalcButtonSwiftUIView: View {
    
    var action: () -> Void
    var title: String
    var backgroundColor: Color
    var textColor: Color
    var width: CGFloat
    var height: CGFloat
    var textAlignment: TextAlignment
    
    public var body: some View {
        
        Button(action: { self.action() }) {
            Text(title)
                .foregroundColor(textColor)
                .font(Font.custom("Arial", size: (height) / 2))
            .multilineTextAlignment(textAlignment)
                .frame(width: width - 25, height: height, alignment: .leading)
        }
        .frame(width: width, height: height)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: (height) / 2, style: .circular))
        
        
    }
}

struct CalcButtonSwiftUIView_Previews: PreviewProvider {
    
    static var previews: some View {
        CalcButtonSwiftUIView(action: {print("I'm a button")}, title: "0", backgroundColor: Colors.numbersBackground, textColor: Colors.numbersText, width: 100, height: 50, textAlignment: .center)
    }
}
