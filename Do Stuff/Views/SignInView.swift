//
//  SignInView.swift
//  Do Stuff
//
//  Created by Hunter Nunnery on 5/7/20.
//  Copyright © 2020 Hunter Nunnery. All rights reserved.
//

import SwiftUI

struct SignInView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State var coordinator: SignInWithAppleCoordinator?
    
    var body: some View {
        SignInWithAppleButton()
            .frame(width: 288, height: 45)
            .onTapGesture {
                self.coordinator = SignInWithAppleCoordinator()
                if let coordinator = self.coordinator {
                    coordinator.startSignInWithAppleFlow {
                        print("You successfully signed in")
                        self.presentationMode.wrappedValue.dismiss()
                    }
                }
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
