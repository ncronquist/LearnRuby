Dir.chdir '/home/ncronquist/Music/'

music_dir = '/home/ncronquist/Music/'

songs = Dir[music_dir + '*.mp3']
shuffled_songs = songs.shuffle

playlist = ''
shuffled_songs.each do |s|
  # Create the playlist by writin a string with each song on a separate line
  playlist += s + "\n"
end

playlist_name = music_dir + 'playlist.m3u'

File.open playlist_name, 'w' do |f|
    f.write(playlist)
end
