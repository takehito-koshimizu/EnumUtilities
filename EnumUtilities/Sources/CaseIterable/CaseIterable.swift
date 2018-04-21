//
//  CaseIterable.swift
//  EnumUtilities
//
//  Created by Takehito Koshimizu on 2018/04/21.
//

import Foundation

/// Enum にイテレータを追加するプロトコル
public protocol CaseIterable {
}

extension CaseIterable where Self: Hashable {

    /// Enum の一番上の case から一番下の case までを並べたイテレータ
    ///
    /// こちらの記事を参考にしました。
    /// [Swift3.0版、Enumのcaseを配列で返すProtocol Extension](https://qiita.com/sgr-ksmt/items/c1c6a91324cf12151256)
    public static func makeIterator() -> AnyIterator<Self> {
        var n = 0
        return AnyIterator {
            defer { n += 1 }
            let next: Self = withUnsafeBytes(of: &n) { $0.load(as: Self.self) }
            return next.hashValue == n ? next : nil
        }
    }
}
