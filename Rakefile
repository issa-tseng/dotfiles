task :link do
  EXCLUDE = %w{ . .. .DS_Store Rakefile .Rakefile.swp }

  Dir[ '*' ].each do |filename|
    next if EXCLUDE.include? filename

    if (File.exists? (File.join ENV['HOME'], ".#{filename}"))
      puts "File .#{filename} already exists in home; skipping."
    else
      puts "Linking .#{filename} ..."

      File.symlink "Dropbox/dot/#{filename}", (File.join ENV['HOME'], ".#{filename}")
    end
  end
end

