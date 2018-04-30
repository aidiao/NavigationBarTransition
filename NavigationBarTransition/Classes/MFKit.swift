//
//  MFKit.swift
//  MFKit
//
//  Created by Diao on 2017/11/16.
//  Copyright © 2017年 ChuangJia. All rights reserved.
//

import Foundation

public struct MFKit<Base> {
    public let base: Base

    public init(_ base: Base) {
        self.base = base
    }
}

public protocol MFKitCompatible {
    associatedtype CompatibleType

    var mf: MFKit<CompatibleType> { get set }
    static var mf: MFKit<CompatibleType>.Type { get set }
}

extension MFKitCompatible {

    public var mf: MFKit<Self> {
        get {
            return MFKit(self)
        }
        set {
            // this enables using HOKit to "mutate" base object
        }
    }

    public static var mf: MFKit<Self>.Type {
        get {
            return MFKit<Self>.self
        }
        set {
            // this enables using HOKit to "mutate" base type
        }
    }
}

extension NSObject: MFKitCompatible { }
