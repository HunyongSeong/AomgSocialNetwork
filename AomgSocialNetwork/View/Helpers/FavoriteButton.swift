//
//  FavoriteButton.swift
//  AomgSocialNetwork
//
//  Created by David Goggins on 2023/05/21.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool // 이렇게 바인딩으로 받으면,
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toogle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true)) // 여기서는 이렇게 표시한다.
    }
}
