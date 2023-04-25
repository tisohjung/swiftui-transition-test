//
//  CounterEnvironment.swift
//  testtest
//
//  Created by Minho Yi on 2023/04/18.
//

import ComposableArchitecture
import Dependencies
import Foundation

public struct CounterEnvironment {
}

// MARK: - Live

extension CounterEnvironment {
  public static var liveValue: Self {
    return Self(
    )
  }
}

// MARK: - Test

extension CounterEnvironment {
  public static var testValue: Self {
    return Self(
    )
  }
}

// MARK: - Preview

extension CounterEnvironment {
  public static var previewValue: Self {
    return Self(
    )
  }
}

public enum CounterEnvironmentKey: TestDependencyKey {
  public static var testValue: CounterEnvironment {
    .testValue
  }
}

extension DependencyValues {
  public var counterEnvironment: CounterEnvironment {
    get { self[CounterEnvironmentKey.self] }
    set { self[CounterEnvironmentKey.self] = newValue }
  }
}
