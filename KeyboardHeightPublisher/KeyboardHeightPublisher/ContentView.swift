//
//  ContentView.swift
//  KeyboardHeightPublisher
//
//  Created by ProgrammingWithSwift on 2020/05/24.
//  Copyright © 2020 ProgrammingWithSwift. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var keyboardHeightHelper = KeyboardHeightHelper()
    @State var textFieldText = ""

    var body: some View {
        VStack {
            Spacer()
            TextField("Text field",
                      text: $textFieldText)
                .offset(y: -self.keyboardHeightHelper.keyboardHeight)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
