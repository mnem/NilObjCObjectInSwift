//
//  HelloWorldStringProvider.swift
//  NilObjCObjectInSwift
//
//  Created by David Wagner on 03/09/2019.
//  Copyright © 2019 David Wagner. All rights reserved.
//

import Foundation

final class HelloWorldStringProvider: NSObject, StringProviding {
    func string() -> String {
        return "Hello, world!"
    }
}
