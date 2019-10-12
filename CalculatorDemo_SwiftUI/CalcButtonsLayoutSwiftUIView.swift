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
    @State var textInResultView: String = ""
    @State var resultsFontSize: CGFloat = 50
    
    var body: some View {
        
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                Text(textInResultView)
                    .foregroundColor(.white)
                    .frame(width:300 , height: 100, alignment: Alignment.trailing)
                    .font(Font.custom("Arial", size: resultsFontSize))
                    .lineLimit(1)
                    
                HStack {
                    VStack(spacing: 12){
                        HStack {
                            VStack(spacing: 12) {
                                CalcButtonSwiftUIView(action: {
                                    self.clearTextView()
                                }, title: "C", backgroundColor: Colors.unaryBackground, textColor: Colors.unaryText, width: 75, height: 75, textAlignment: .center)
                                CalcButtonSwiftUIView(action: {
                                    self.updateTextView(withValue: "7")
                                }, title: "7", backgroundColor: Colors.numbersBackground, textColor: Colors.numbersText, width: 75, height: 75, textAlignment: .center)
                                CalcButtonSwiftUIView(action: {
                                    self.updateTextView(withValue: "4")
                                }, title: "4", backgroundColor: Colors.numbersBackground, textColor: Colors.numbersText, width: 75, height: 75, textAlignment: .center)
                                CalcButtonSwiftUIView(action: {
                                    self.updateTextView(withValue: "1")
                                }, title: "1", backgroundColor: Colors.numbersBackground, textColor: Colors.numbersText, width: 75, height: 75, textAlignment: .center)
                                
                            }
                            VStack(spacing: 12) {
                                CalcButtonSwiftUIView(action: {
                                    
                                }, title: "+/-", backgroundColor: Colors.unaryBackground, textColor: Colors.unaryText, width: 75, height: 75, textAlignment: .center)
                                CalcButtonSwiftUIView(action: {
                                    self.updateTextView(withValue: "8")
                                }, title: "8", backgroundColor: Colors.numbersBackground, textColor: Colors.numbersText, width: 75, height: 75, textAlignment: .center)
                                CalcButtonSwiftUIView(action: {
                                    self.updateTextView(withValue: "5")
                                }, title: "5", backgroundColor: Colors.numbersBackground, textColor: Colors.numbersText, width: 75, height: 75, textAlignment: .center)
                                CalcButtonSwiftUIView(action: {
                                    self.updateTextView(withValue: "2")
                                }, title: "2", backgroundColor: Colors.numbersBackground, textColor: Colors.numbersText, width: 75, height: 75, textAlignment: .center)
                            }
                        }
                        CalcButtonSwiftUIView(action: {
                            
                        }, title: "0", backgroundColor: Colors.numbersBackground, textColor: Colors.numbersText, width: 150, height: 75, textAlignment: .leading)
                    }
                    
                    VStack(spacing: 12) {
                        CalcButtonSwiftUIView(action: {
                            
                        }, title: "%", backgroundColor: Colors.unaryBackground, textColor: Colors.unaryText, width: 75, height: 75, textAlignment: .center)
                        CalcButtonSwiftUIView(action: {
                            self.updateTextView(withValue: "9")
                        }, title: "9", backgroundColor: Colors.numbersBackground, textColor: Colors.numbersText, width: 75, height: 75, textAlignment: .center)
                        CalcButtonSwiftUIView(action: {
                            self.updateTextView(withValue: "6")
                        }, title: "6", backgroundColor: Colors.numbersBackground, textColor: Colors.numbersText, width: 75, height: 75, textAlignment: .center)
                        CalcButtonSwiftUIView(action: {
                            self.updateTextView(withValue: "3")
                        }, title: "3", backgroundColor: Colors.numbersBackground, textColor: Colors.numbersText, width: 75, height: 75, textAlignment: .center)
                        CalcButtonSwiftUIView(action: {
                            self.updateTextView(withValue: ".")
                        }, title: ".", backgroundColor: Colors.numbersBackground, textColor: Colors.numbersText, width: 75, height: 75, textAlignment: .center)
                    }
                    VStack(spacing: 12) {
                        CalcButtonSwiftUIView(action: {
                            
                        }, title: "/", backgroundColor: Colors.operatorsBackground, textColor: Colors.operatorsText, width: 75, height: 75, textAlignment: .center)
                        CalcButtonSwiftUIView(action: {
                            
                        }, title: "x", backgroundColor: Colors.operatorsBackground, textColor: Colors.operatorsText, width: 75, height: 75, textAlignment: .center)
                        CalcButtonSwiftUIView(action: {
                            
                        }, title: "-", backgroundColor: Colors.operatorsBackground, textColor: Colors.operatorsText, width: 75, height: 75, textAlignment: .center)
                        CalcButtonSwiftUIView(action: {
                            
                        }, title: "+", backgroundColor: Colors.operatorsBackground, textColor: Colors.operatorsText, width: 75, height: 75, textAlignment: .center)
                        CalcButtonSwiftUIView(action: {
                            
                            }, title: "=", backgroundColor: Colors.operatorsBackground, textColor: Colors.operatorsText, width: 75, height: 75, textAlignment: .center)
                    }
                }
            }
        }
    }
    
    func updateTextView(withValue value: String) {
        
        var numberOfChars = textInResultView.count
        let numberOfCommas = textInResultView.filter { $0 == ","
        }

        if numberOfChars > 8 {
            if resultsFontSize  < 36 {
                //do nothing
            } else {
                resultsFontSize -= 4
            }
        }
        if numberOfChars < 8 {
            resultsFontSize = 50
        }
        if textInResultView == "0" {
            textInResultView = value
            return
        }
        textInResultView += value
    }
    
    func clearTextView() {
        textInResultView = "0"
        resultsFontSize = 50
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


