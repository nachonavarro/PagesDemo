//
//  WhatsNewView.swift
//  PagesDemo
//
//  Created by Nacho Navarro on 05/11/2019.
//  Copyright © 2019 nachonavarro. All rights reserved.
//

import SwiftUI

struct WhatsNewView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text("What's New")
                    .font(.system(size: 22, weight: .bold))
                Spacer()
                Button(action: {}) {
                    Text("Version History")
                }
            }
            HStack {
                Text("Version 245.0")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                Spacer()
                Text("5 days ago")
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            Text("We update the app regularly so we can make it better for you. Get the latest version for all of the available Facebook features. This version includes several bug fixes and performance improvements and also includes Facebook News, which is a personalized, dedicated space for top stories, breaking news and interest-based news.")
                    .font(.system(size: 15, weight: .regular))
        }
    }
}

struct WhatsNewView_Previews: PreviewProvider {
    static var previews: some View {
        WhatsNewView()
            .previewLayout(.sizeThatFits)
    }
}
