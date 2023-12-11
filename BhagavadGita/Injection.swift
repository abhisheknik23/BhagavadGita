//
//  Injection.swift
//  BhagavadGita
//
//  Created by Abhishek Gupta on 11/12/23.
//

import Foundation
import Swinject

final class Injection {

    static let shared = Injection()

    var container: Container {
        get {
            if _container == nil {
                _container = buildContainer()
            }
            return _container!
        }
        set {
            _container = newValue
        }
    }

    private var _container: Container?

    private func buildContainer() -> Container {
        let contatiner = Container()
        contatiner.register(BGLoggerType.self) { _ in
            return BGLogger()
        }
        return contatiner
    }
}

@propertyWrapper struct Injected<Dependency> {
    let wrappedValue: Dependency

    init(wrappedValue: Dependency) {
        self.wrappedValue = Injection.shared.container.resolve(Dependency.self)!
    }
}
