//
//  ModelView.swift
//  UnitTestDemo
//
//  Created by Надежда on 2022-08-03.
//

import Foundation
import UIKit

final class ModelView: ObservableObject {
    @Published var text = ""
    @Published var convertedText = "$0"
    private let converter = Converters()
    
    func convertMoney() {
        convertedText = converter.convertEuroToUSD(euro: text)
        hideKeyBoard()
    }
    
    private func hideKeyBoard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
