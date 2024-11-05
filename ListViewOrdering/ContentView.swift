//
//  ContentView.swift
//  ListViewOrdering
//
//  Created by Maxim Dmitrochenko on 05-11-2024.
//

import SwiftUI

struct ContentView: View {
    @State private var episodes: [Episode] = MockData.episodes
    
    var body: some View {
        NavigationStack {
            //            List($episodes, editActions: .move) { episode in
            
            List {
                ForEach(episodes) { episode in
                    HStack(alignment: .top, spacing: 12) {
                        RoundedRectangle(cornerRadius: 12)
                            .frame(width: 80, height: 80)
                            .foregroundStyle(episode.color)
                        
                        VStack(alignment: .leading) {
                            Text(episode.title)
                                .font(.headline)
                            
                            Text("Short Description Of The Latest Episode")
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
                .onMove { indexSet, destination in
                    episodes.move(fromOffsets: indexSet, toOffset: destination)
                    var updatedEpisodes = episodes
                    for index in updatedEpisodes.indices {
                        updatedEpisodes[index].listOrder = index
                        print("\(updatedEpisodes[index].title), listOrder = \(updatedEpisodes[index].listOrder)")
                    }
                    self.episodes = updatedEpisodes
                    print("--------------------------")
                }
                
                //            .onChange(of: episodes) { oldValue, newValue in
                //                var updatedEpisodes = newValue
                //                for index in updatedEpisodes.indices {
                //                    updatedEpisodes[index].listOrder = index
                //                    print("\(updatedEpisodes[index].title), listOrder = \(updatedEpisodes[index].listOrder)")
                //                }
                //                self.episodes = updatedEpisodes
                //                print("--------------------------")
                //            }
            }
        }
    }
}

#Preview {
    ContentView()
}
