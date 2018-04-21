//
//  UnsafeConvertible.swift
//  EnumUtilities
//
//  Created by Takehito Koshimizu on 2018/04/21.
//

import Foundation

public protocol UnsafeConvertible {
}

extension UnsafeConvertible {

    /// `T` を `unsafeBitCast` する
    public init?<T>(_ t: T?) {
        guard let t = t else { return nil }
        self = unsafeBitCast(t, to: Self.self)
    }

    /// `unsafeBitCast` して `T` にする
    public func convert<T>(`as` t: T.Type) -> T {
        return unsafeBitCast(self, to: t)
    }
}
