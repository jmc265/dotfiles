```
curl -sfL https://git.io/chezmoi | sh
chezmoi init --apply https://github.com/jmc265/dotfiles.git
```

# Other steps on OSX
* `sudo chezmoi apply` a couple of times
* iTerm2 --> Preferences --> Profiles --> Text --> Font = Hack Nerd Font
* iTerm2 --> Preferences --> Profiles --> Colours --> ${HOME}/.iterm2/Solorized Dark - Patched.itermcolors
* Install Firefox extensions (uBlock Origin, Decentraleyes, HTTPS Everywhere, Firefox Multi-Account Containers, Startpage.com, Tabliss)
* Firefox --> about:config --> toolkit.legacyUserProfileCustomizations.stylesheets to true
* Firefox --> about:profiles --> Profile Folder --> `ln -s ~/.local/share/chezmoi/software/firefox/profiles/chrome <PROFILE-FOLDER>`
* Change Background image to /Users/user/Pictures/background.png
* [Install Fork](https://git-fork.com/)
* [Instal Docker Desktop](https://www.docker.com/products/docker-desktop)

Inspiration:
 * https://github.com/twpayne/dotfiles
 * https://github.com/renemarc/dotfiles
 * https://github.com/hjuutilainen/dotfiles

