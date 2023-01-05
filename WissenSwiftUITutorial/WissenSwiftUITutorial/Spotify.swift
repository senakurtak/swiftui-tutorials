//
//  Spotify.swift
//  WissenSwiftUITutorial
//
//  Created by Sena Kurtak on 24.04.2022.
//
import SwiftUI

struct Spotify: View {
    let filters = ["Playlist", "Artists", "Albums", "Podcasts && Shop"]
    var body: some View {
        
        
        
        ZStack{
            VStack{
                HStack{
                    Image("SenaPP")
                    //.resizable()image değişiklikleri için kullanılır. EKLEMEZSEN ÇALIŞMAZ
                        .resizable()
                    //ikonların boyutlarını ayarlayabilmek için
                        .frame(width: 50, height: 60)
                        .cornerRadius(100)
                    // Fotoğrafı 2 türlü yuvalak yapabilirsin.
                    //      1-)  .cornerRadius(100)
                    //      2-)  .clipShape(Circle())
                    
                    Text("Your Library")
                        .foregroundColor(Color.white)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                    
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                }
                
                ScrollView(.horizontal){
                    HStack{
                        ForEach(filters, id: \.self) {
                            Text($0)
                            // $ işareti dinamik hale getirir.
                                .foregroundColor(.white)
                                .padding()
                                .border(Color.white, width: 1)
                        }
                        
                    }
                }
                
                HStack{
                    
                    Image(systemName: "arrow.up.arrow.down")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                    
                    Text("Recently Played")
                        .foregroundColor(Color.white)
                        .font(.title3)
                    
                    Spacer()
                    
                    Image(systemName: "square.grid.2x2")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)

                }
                HStack{
                    Image("ironmaiden")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
    
                    VStack{
                        Text("Liked Songs")
                            .fontWeight(.bold)
                            .font(.title2)
                            .foregroundColor(.white)
                        HStack{
                            Image(systemName: "pin.fill")
                                .resizable()
                                .frame(width:15, height: 15)
                                .foregroundColor(.green)
                            Text("Playlist - 185 songs")
                                .foregroundColor(.white)
                        }
                    }
                    Spacer()
                }
        
                ScrollView{
                    HStack{
                        Image("AfterHours")
                            .resizable()
                            .frame(width: 75, height: 75)
                            .cornerRadius(100)
                        VStack{
                            HStack{
                            Text("After Hours (Deluxe)")
                                .foregroundColor(.white)
                                .font(.title2)
                                Spacer()
                            }
                            HStack{
                                    Image(systemName: "arrow.down.circle.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.green)
                                
                            Text("Playlist · 12 songs")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                Spacer()

                            }
                        
                        }

                        Spacer()
                    }
                    HStack{
                        Image("throne")
                            .resizable()
                            .frame(width: 75, height: 75)
                            .cornerRadius(100)
                        VStack{
                            HStack{
                            Text("Game of Thrones Sound Tracks")
                                .foregroundColor(.white)
                                .font(.title2)
                                Spacer()
                            }
                            HStack{
                                    Image(systemName: "arrow.down.circle.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.green)
                                
                            Text("Playlist · 58 songs")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                Spacer()

                            }
                        
                        }

                        Spacer()
                    }
                    HStack{
                        Image("AndreRieu")
                            .resizable()
                            .frame(width: 75, height: 75)
                            .cornerRadius(100)
                        VStack{
                            HStack{
                            Text("Andre Rieu Classics")
                                .foregroundColor(.white)
                                .font(.title2)
                                Spacer()
                            }
                            HStack{
                                    Image(systemName: "arrow.down.circle.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.green)
                                
                            Text("Playlist · 58 songs")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                Spacer()

                            }
                        
                        }

                        Spacer()
                    }
                    HStack{
                        Image("movies")
                            .resizable()
                            .frame(width: 75, height: 75)
                            .cornerRadius(100)
                        VStack{
                            HStack{
                            Text("Movies Generics")
                                .foregroundColor(.white)
                                .font(.title2)
                                Spacer()
                            }
                            HStack{
                                    Image(systemName: "arrow.down.circle.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.green)
                                
                            Text("Playlist · 32 songs")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                Spacer()

                            }
                        
                        }

                        Spacer()
                    }
                    HStack{
                        Image("movies")
                            .resizable()
                            .frame(width: 75, height: 75)
                            .cornerRadius(100)
                        VStack{
                            HStack{
                            Text("Series Generic")
                                .foregroundColor(.white)
                                .font(.title2)
                                Spacer()
                            }
                            HStack{
                                    Image(systemName: "arrow.down.circle.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.green)
                                
                            Text("Playlist · 32 songs")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                Spacer()

                            }
                        
                        }

                        Spacer()
                    }
                    HStack{
                        Image("martini")
                            .resizable()
                            .frame(width: 75, height: 75)
                            .cornerRadius(100)
                        VStack{
                            HStack{
                            Text("Happy Hour Songs")
                                .foregroundColor(.white)
                                .font(.title2)
                                Spacer()
                            }
                            HStack{
                                    Image(systemName: "arrow.down.circle.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.green)
                                
                            Text("Playlist · 52 songs")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                Spacer()

                            }
                        
                        }

                        Spacer()
                    }
                    HStack{
                        Image("AfterHours")
                            .resizable()
                            .frame(width: 75, height: 75)
                            .cornerRadius(100)
                        VStack{
                            HStack{
                            Text("After Hours")
                                .foregroundColor(.white)
                                .font(.title2)
                                Spacer()
                            }
                            HStack{
                                    Image(systemName: "arrow.down.circle.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.green)
                                
                            Text("Playlist · 12 songs")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                Spacer()

                            }
                        
                        }

                        Spacer()
                    }
                }
                
                Spacer()
            }
        }
        .background(Color.black)
    }
}

struct Spotify_Previews: PreviewProvider {
    static var previews: some View {
        Spotify()
    }
}
