```
curl -sfL https://git.io/chezmoi | sh
chezmoi init --apply git@github.com:jmc265/dotfiles.git
```

# Other steps on OSX
* `sudo chezmoi apply` a couple of times
* iTerm2 --> Perferences --> Profiles --> Text --> Font = Hack Nerd Font
* Install Firefox extensions (uBlock Origin, Decentraleyes, HTTPS Everywhere, Firefox Multi-Account Containers, Startpage.com, Tabliss)
* Firefox --> about:config --> toolkit.legacyUserProfileCustomizations.stylesheets to true
* Firefox --> about:profiles --> folder
* Change Background image to /Users/user/Pictures/background.png
* (Install Fork)[https://git-fork.com/]

* ln -s ~/.local/share/chezmoi/software/firefox/profiles/chrome /Users/james/Library/Application\ Support/Firefox/Profiles/mazaexby.dev-edition-default
echo "{\"organizationId\":null,\"folderId\":null,\"type\":2,\"name\":\"sshkey\",\"notes\":\"$(sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/\\\\n/g' ~/.ssh/id_rsa)\",\"favorite\":false,\"fields\":[],\"login\":null,\"secureNote\":{\"type\":0},\"card\":null,\"identity\":null}" | bw encode | bw create item


Inspiration:
 * https://github.com/twpayne/dotfiles
 * https://github.com/renemarc/dotfiles
 * https://github.com/hjuutilainen/dotfiles

