# This section is all commented because it wouldn't actually work on my computer
# 11.7 Renaming Your Photos
Dir['*.png'] # => Searches for all jpg files in the diretory from which you run the program

# Move to correct directory
Dir.chdir '/home/ncronquist/Pictures/'

# First we find all of the pictures to be moved
pic_names = Dir['/home/ncronquist/Pictures/Test/**/*.png']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

# This will be our counter. We'll start at 1 today,
# though normally I like to count from 0.
pic_number = 1

pic_names.each do |name|
  print '.' # This is our "progress bar".

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.png"
  else
    "#{batch_name}#{pic_number}.png"
  end
  # This renames the picutures, but since "name"
  # has a big long path on it, and "new_name"
  # doesn't, it also moves the file to the
  # current working direcotry, which is now
  # Katy's PictureInbox folder.
  # Since it's a *move*, this effectively
  # downloads and deletes the originals.
  # And since this is a memory card, not a
  # hard drive, each of these takes a second
  # or so; hence, the little dots let her
  # know that my program didn't hose her machine.
  # (Some marriage advice from your favorite
  # author/pgorammer: it's all about the
  # little things.)

  if File.exist? new_name
    puts
    puts 'Warning! This would overwrite files. Process terminated.'
    exit
  end

  File.rename name, new_name
  # Finally we increment the counter
  pic_number += 1
end

puts # This is so we aren't on progress bar line.
puts 'Done!'
