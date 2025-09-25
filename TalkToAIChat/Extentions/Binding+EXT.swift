//
//  Binding+EXT.swift
//  TalkToAIChat
//
//  Created by Dmitry Volkov on 25/09/2025.
//

import SwiftUI
import Foundation

extension Binding where Value == Bool {
    
    init<T: Sendable>(ifNotNil value: Binding<T?>) {
        self.init {
            value.wrappedValue != nil
        } set: { newValue in
            if !newValue {
                value.wrappedValue = nil
            }
        }
    }
}
