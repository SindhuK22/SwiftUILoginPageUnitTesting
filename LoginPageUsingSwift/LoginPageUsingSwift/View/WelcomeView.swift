//
//  WelcomeView.swift
//  LoginPageUsingSwift
//
//  Created by Sindhu K on 20/09/23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            Text("Welcome")
                .font(.title)
                .foregroundColor(.black)
                .padding()
            
        }
    }
}
struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
