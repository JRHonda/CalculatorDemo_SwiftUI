//
//  TestButton.swift
//  CalculatorDemo_SwiftUI
//
//  Created by Justin Honda on 10/11/19.
//  Copyright © 2019 Justin Honda. All rights reserved.
//

import SwiftUI

public struct TestButton: View {
    
    var action: () -> Void
    var title: String
    
    public var body: some View {
        Button(action: {
            self.action()
        }) {
            Text(title)
        }
    }
}
