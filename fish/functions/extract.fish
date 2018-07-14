function extract --description 'Extract compressed files from an archive'
    for archive in $argv
        switch $archive
            case '*.7z'
                7z x $archive
            case '*.bz2'
                bunzip2 $archive
            case '*.gz'
                gunzip $archive
            case '*.rar'
                unrar x $archive
            case '*.tar'
                tar --extract --file $archive
            case '*.tar.bz2' '*.tbz2'
                tar --extract --bzip2 --file $archive
            case '*.tar.gz' '*.tgz'
                tar --extract --gzip --file $archive
            case '*.xz'
                unxz $archive
            case '*.zip'
                unzip $archive
            case '*'
                echo Cannot extract $archive >&2
        end
    end
end
