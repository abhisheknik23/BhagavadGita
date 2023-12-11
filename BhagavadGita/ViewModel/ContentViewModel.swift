//
//  ContentViewModel.swift
//  BhagavadGita
//
//  Created by Abhishek Gupta on 10/12/23.
//

import Foundation

class ContentViewModel: ObservableObject {
    @Injected var logger: BGLoggerType?
    func onAppear() {
        logger?.info("View Appear")
        // BGLogger.shared.debug("View Appear")
    }
}
