//
//  CalcButtonsLayoutSwiftUIView.swift
//  CalculatorDemo_SwiftUI
//
//  Created by Justin Honda on 10/11/19.
//  Copyright © 2019 Justin Honda. All rights reserved.
//

import SwiftUI
import UIKit

struct CalcButtonsLayoutSwiftUIView: View {
    
    @State var showAlert: Bool = false
    
    var body: some View {
        
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                
                HStack {
                    
                    CalcButtonSwiftUIView(action: {
                        self.printMsg()
                    }, title: "0", backgroundColor: .green, textColor: .white, width: 100, height: 50, textAlignment: .leading)
                    
                }.frame(minWidth: 0, maxWidth: .infinity)
                .padding()
                
                
                    
                
            }
        }
        
        
        
    }
    
    func printMsg() {
        print("Im a Woohoo button")
    }
}

struct CalcButtonsLayoutSwiftUIView_Previews: PreviewProvider {
    
    static var previews: some View {
        CalcButtonsLayoutSwiftUIView()
    }
}


