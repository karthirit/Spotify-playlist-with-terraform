resource "spotify_playlist" "Heaven"{
    name = "Heaven"
    tracks = ["0eCajpR75pDW0r64U6hP2x"]
}

data "spotify_search_track" "Anirudh" {
  name = "Anirudh"
}

resource "spotify_playlist" "Moonu"{
    name = "Moonu"
    tracks = [data.spotify_search_track.Anirudh.tracks[0].id,
    data.spotify_search_track.Anirudh.tracks[1].id,
    data.spotify_search_track.Anirudh.tracks[2].id,]
}
