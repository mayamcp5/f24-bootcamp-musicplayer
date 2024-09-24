//
//  MusicPlayerView.swift
//  musicplayer
//
//  Created by Maya McPartland on 9/24/24.
//

import SwiftUI
let backColor = Color(red: 0.514, green: 0.490, blue: 0.357
)

struct MusicPlayerView: View {
    var body: some View {
        ZStack {
            backColor.ignoresSafeArea()
            VStack(spacing: 8) {
                Image(systemName: "minus").font(.largeTitle).foregroundColor(.secondary)
                Spacer()
                Image("album").resizable().frame(width: 250, height: 275)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                Spacer()
                Spacer()
                HStack() {
                    VStack(alignment: .leading) {
                        HStack() {
                            Text("**After School Special**").font(.title3)
                            Image(systemName: "e.square.fill")
                        }
                        Text("Mr. Bungle").font(.title3)
                    }
                    Spacer()
                    Image(systemName: "star.circle").font(.title3)
                    Image(systemName: "ellipsis.circle").font(.title3)
                }.padding(.horizontal, 30).padding(.vertical, 20)
                Image(systemName: "rectangle.fill").resizable().frame(width: 345, height: 6).foregroundStyle(.secondary).clipShape(Capsule())
                HStack() {
                    Text("0:00")
                    Spacer()
                    Text("-2:48")
                }.font(.caption2).padding(.horizontal, 30)
                HStack(alignment: .center) {
                    Image(systemName: "backward.fill")
                    Spacer()
                    Image(systemName: "play.fill")
                    Spacer()
                    Image(systemName: "forward.fill")
                }.font(.largeTitle).padding(.horizontal, 80).padding(.vertical, 30)
                HStack() {
                    Image(systemName: "speaker.fill")
                    Image(systemName: "rectangle.fill").resizable().frame(width: 290, height: 6).foregroundStyle(.secondary).clipShape(Capsule())
                    Image(systemName: "speaker.wave.3.fill")
                }.font(.caption).padding()
                HStack() {
                    Image(systemName: "quote.bubble")
                    Spacer()
                    Image(systemName: "airplay.audio")
                    Spacer()
                    Image(systemName: "list.bullet")
                }.font(.title3).padding(.horizontal, 70)
            }
        }
    }
}

#Preview {
    MusicPlayerView()
}
