# Clears system trash in /home/.local/share/Trash/files
export def "clear trash" [] {
  ls ~/.local/share/Trash/files | each { rm -rfp $in.name }
}
