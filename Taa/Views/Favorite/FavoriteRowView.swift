//
//  FavoriteRowView.swift
//  Taa
//
//  Created by 大和田一裕 on 2022/07/04.
//

import SwiftUI

struct FavoriteRowView: View {
    var body: some View {
        ScrollView(.vertical) {
            ForEach(0..<6) { _ in
                FavoriteView()
            }
        }
    }
}

struct FavoriteRowView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteRowView()
    }
}
