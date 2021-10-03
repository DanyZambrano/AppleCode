//
//  ContentView.swift
//  Shared
//
//  Created by Dany E Zambrano S on 29/09/21.
//

import SwiftUI

struct ContentView: View {
    #if os(iOS)
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    #endif
    
    @ViewBuilder
    var body: some View {
        #if os(iOS)
        if horizontalSizeClass == .compact {
            CoursesView()
        } else {
            CoursesView()
        }
        #else
        Sidebar()
            .frame(minWidth: 1000, minHeight: 600)
        #endif
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
