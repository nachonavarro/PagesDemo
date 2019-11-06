//
//  AppDetailView.swift
//  PagesDemo
//
//  Created by Nacho Navarro on 05/11/2019.
//  Copyright © 2019 nachonavarro. All rights reserved.
//

import SwiftUI

struct AppDetailView: View {
    var body: some View {
        ScrollView {
            IntroductionView()
                .padding([.top, .horizontal])
            Divider()
                .padding(.horizontal)
            Spacer()
            WhatsNewView()
                .padding(.horizontal)
            Divider()
                .padding(.horizontal)
            AppPreviewView()
        }
    }
}

struct AppDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppDetailView()
    }
}
