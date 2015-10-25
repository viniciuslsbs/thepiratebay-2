## Example search
    
    require 'bundler/setup'
    require 'thepiratebay'

    query = ThePirateBay::Search.new('query').results[0]
    puts query[:title]
    puts "#{query[:seeders]}" + " seeders and " + "#{query[:leechers]}" + " leechers"

## API

    # Search for torrents, returns array
    ThePirateBay::Search.new('query').results

    # Lookup specific torrent with the tpb torrent id
    ThePirateBay::Torrent.find("123123123")

    # Page, sort and category is optional - (query, page, sort, category)
    # Page 2 is actually page 3, you get it.
    ThePirateBay::Search.new('query', 2, ThePirateBay::SortBy::Seeders, ThePirateBay::Category::Video).results

    # The following sortings are available:
    ThePirateBay::SortBy::Relevance   # Sorted by relevancy
    ThePirateBay::SortBy::Name_asc    # Name ascending
    ThePirateBay::SortBy::Name_desc   # Name descending
    ThePirateBay::SortBy::Size        # Size, largest first
    ThePirateBay::SortBy::Seeders     # Most seeders first
    ThePirateBay::SortBy::Leechers    # Most leechers first
    ThePirateBay::SortBy::Type        # Type name descending
    ThePirateBay::SortBy::Uploaded    # Latest first

    # The following categories are available:
    ThePirateBay::Category::All
    
    # Audio
    ThePirateBay::Category::Music
    ThePirateBay::Category::Audio_Books
    ThePirateBay::Category::Audio_Clips
    ThePirateBay::Category::FLAC
    ThePirateBay::Category::Other_Audio
    
    # Video
    ThePirateBay::Category::Movies
    ThePirateBay::Category::Movies_DVDR
    ThePirateBay::Category::Music_Videos
    ThePirateBay::Category::Movie_Clips
    ThePirateBay::Category::TV_Shows
    ThePirateBay::Category::Video_Handheld
    ThePirateBay::Category::HD_Movies
    ThePirateBay::Category::HD_TV_Shows
    ThePirateBay::Category::Video_3D
    ThePirateBay::Category::Other_Video
    
    # Applications
    ThePirateBay::Category::Windows
    ThePirateBay::Category::Mac
    ThePirateBay::Category::UNIX
    ThePirateBay::Category::Application_Handheld
    ThePirateBay::Category::IOS
    ThePirateBay::Category::Android
    ThePirateBay::Category::Other_OS
    
    # Games
    ThePirateBay::Category::Games_PC
    ThePirateBay::Category::Games_Mac
    ThePirateBay::Category::Games_PSx
    ThePirateBay::Category::Games_Xbox
    ThePirateBay::Category::Games_Wii
    ThePirateBay::Category::Games_Handheld
    ThePirateBay::Category::Games_IOS
    ThePirateBay::Category::Games_Android
    ThePirateBay::Category::Other_Games
