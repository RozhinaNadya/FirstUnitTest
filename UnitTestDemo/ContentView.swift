//
//  ContentView.swift
//  UnitTestDemo
//
//  Created by Надежда on 2022-08-03.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ModelView()
    var body: some View {
        Form {
            VStack(spacing: 20) {
                Text("\(viewModel.convertedText)")
                    .font(.headline)
                TextField("Enter a value", text: $viewModel.text)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
                    .submitLabel(.done)
                Button("Convert", action: viewModel.convertMoney)
                    .buttonStyle(.borderedProminent)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
