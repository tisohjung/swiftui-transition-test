//
//  ContentView.swift
//  testtest
//
//  Created by Minho Yi on 2023/04/18.
//

import SwiftUI

enum Tabs {
  case one, two, three, four
}

public extension AnyTransition {

  static var bottomNav: Self {
    let showAnimation: AnyTransition = .opacity
      .combined(with: .offset(x: -25))
      .animation(.timingCurve(0.18, 0.64, 0.52, 1, duration: 0.17).delay(0.17))
    let hideAnimation: AnyTransition = .opacity
      .combined(with: .offset(x: -25))
      .animation(.timingCurve(0.54, 0.11, 0.92, 0.5, duration: 0.17))

    return AnyTransition
      .asymmetric(
        insertion: showAnimation,
        removal: hideAnimation
      )
  }
}

struct ContentView: View {
  @State var tab: Tabs = .one

  var body: some View {
    VStack {
      Group {
        switch tab {
        case .one:
          Color.red
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .zIndex(tab == .one ? 2 : 1)
            .onAppear {
              print("One")
            }

        case .two:
          VStack {
            Image(systemName: "globe")
              .imageScale(.large)
              .foregroundColor(.accentColor)
            Text("Hello, world!")
          }
          .frame(maxWidth: .infinity, maxHeight: .infinity)
          .zIndex(tab == .two ? 2 : 1)
          .onAppear {
            print("Two")
          }

        case .three:
          Color.green
            .zIndex(tab == .three ? 2 : 1)
            .onAppear {
              print("Three")
            }

        case .four:
          Color.blue
            .zIndex(tab == .four ? 2 : 1)
            .onAppear {
              print("Four")
            }
        }
      }
      .transition(.bottomNav)

      HStack {
        Button {
          withAnimation {
            tab = .two
          }
        } label: {
          Text("One")
        }
        Button {
          withAnimation {
            tab = .three
          }
        } label: {
          Text("Two")
        }
        Button {
          withAnimation {
            tab = .four
          }
        } label: {
          Text("Three")
        }
        Button {
          withAnimation {
            tab = .one
          }
        } label: {
          Text("Four")
        }
      }
    }
    .ignoresSafeArea()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
