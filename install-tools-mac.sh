#!/bin/sh

# Install Brew
#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
#brew tap homebrew/cask
#brew tap homebrew/cask-versions

#brew install git

# Install ZSH
#brew install zsh
#brew install zsh-completions
#chsh -s $(which zsh)
#./install-zsh-plugins.sh

# Install neofetch
#brew install neofetch

# Install tfenv
#brew install tfenv
#tfenv install latest

# Install NVM (node)
#curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
#nvm install node
#nvm use node

# Docker
#brew install docker --cask

# Terminal
#brew install iterm2 --cask

# Install yarn
#brew install yarn

# VSCode insiders
#brew cask install visual-studio-code-insiders

code-insiders --install-extension 42Crunch.vscode-openapi
code-insiders --install-extension aaron-bond.better-comments
code-insiders --install-extension alefragnani.project-manager
code-insiders --install-extension atlassian.atlascode
code-insiders --install-extension christian-kohler.npm-intellisense
code-insiders --install-extension eamodio.gitlens
code-insiders --install-extension eg2.vscode-npm-script
code-insiders --install-extension Equinusocio.vsc-community-material-theme
code-insiders --install-extension Equinusocio.vsc-material-theme
code-insiders --install-extension equinusocio.vsc-material-theme-icons
code-insiders --install-extension GabrielBB.vscode-lombok
code-insiders --install-extension GraphQL.vscode-graphql
code-insiders --install-extension hashicorp.terraform
code-insiders --install-extension jebbs.plantuml
code-insiders --install-extension mathiasfrohlich.Kotlin
code-insiders --install-extension mechatroner.rainbow-csv
code-insiders --install-extension ms-azure-devops.azure-pipelines
code-insiders --install-extension ms-azuretools.vscode-azureappservice
code-insiders --install-extension ms-azuretools.vscode-azurefunctions
code-insiders --install-extension ms-azuretools.vscode-azureresourcegroups
code-insiders --install-extension ms-azuretools.vscode-docker
code-insiders --install-extension ms-dotnettools.csharp
code-insiders --install-extension ms-python.python
code-insiders --install-extension ms-python.vscode-pylance
code-insiders --install-extension ms-toolsai.jupyter
code-insiders --install-extension ms-vscode-remote.remote-containers
code-insiders --install-extension ms-vscode.azure-account
code-insiders --install-extension ms-vscode.powershell-preview
code-insiders --install-extension ms-vsliveshare.vsliveshare
code-insiders --install-extension octref.vetur
code-insiders --install-extension Pivotal.vscode-spring-boot
code-insiders --install-extension rafamel.subtle-brackets
code-insiders --install-extension SonarSource.sonarlint-vscode
code-insiders --install-extension streetsidesoftware.code-spell-checker
code-insiders --install-extension VisualStudioExptTeam.vscodeintellicode

sudo defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
sudo defaults delete -g ApplePressAndHoldEnabled || true

# Install Firefox
#brew cask install firefox-developer-edition

# Install insomnia
#brew cask install insomnia

# Install Fira Code font
#brew tap homebrew/cask-fonts
#brew cask install font-fira-code-nerd-font
#brew cask install font-hack-nerd-font

# Time settings
sudo /usr/sbin/systemsetup -settimezone "Europe/London"
sudo /usr/sbin/systemsetup -setnetworktimeserver "time.euro.apple.com"
sudo /usr/sbin/systemsetup -setusingnetworktime on

# Display -> Automatically adjust brightness
sudo defaults write /Library/Preferences/com.apple.iokit.AmbientLightSensor "Automatic Display Enabled" -bool true

# Keyboard -> Adjust keyboard brightness in low light
sudo defaults write /Library/Preferences/com.apple.iokit.AmbientLightSensor "Automatic Keyboard Enabled" -bool true
sudo defaults write /Library/Preferences/com.apple.iokit.AmbientLightSensor "Keyboard Dim Time" -int 300

# Show shut down etc. buttons
sudo defaults write /Library/Preferences/com.apple.loginwindow PowerOffDisabled -bool false

# Don't show any password hints
sudo defaults write /Library/Preferences/com.apple.loginwindow RetriesUntilHint -int 0

# Allow fast user switching
sudo defaults write /Library/Preferences/.GlobalPreferences MultipleSessionEnabled -bool true

# ==============================================
# Set keyboard preferences
# ==============================================
sudo defaults write com.apple.HIToolbox AppleCurrentKeyboardLayoutInputSourceID "com.apple.keylayout.British-PC"
sudo defaults write com.apple.HIToolbox AppleDefaultAsciiInputSource -dict InputSourceKind "Keyboard Layout" "KeyboardLayout ID" -int 17 "KeyboardLayout Name" British-PC

# Delete the default layouts (US)
sudo defaults delete com.apple.HIToolbox AppleEnabledInputSources

# Enable British-PC layout
sudo defaults write com.apple.HIToolbox AppleEnabledInputSources -array '{ InputSourceKind = "Keyboard Layout"; "KeyboardLayout ID" = 17; "KeyboardLayout Name" = British-PC; }'
sudo defaults write com.apple.HIToolbox AppleInputSourceHistory -array '{ InputSourceKind = "Keyboard Layout"; "KeyboardLayout ID" = 17; "KeyboardLayout Name" = British-PC; }'
sudo defaults write com.apple.HIToolbox AppleSelectedInputSources -array '{ InputSourceKind = "Keyboard Layout"; "KeyboardLayout ID" = 17; "KeyboardLayout Name" = British-PC; }'

sudo defaults write -g AppleInterfaceStyle Dark
sudo defaults write -g AppleLanguages -array en-GB
sudo defaults write -g AppleLocale en_GB
sudo defaults write -g AppleMeasurementUnits -string "Centimeters"
sudo defaults write -g AppleMetricUnits -bool true
sudo defaults write -g ApplePressAndHoldEnabled -bool FALSE
sudo defaults write -g InitialKeyRepeat -int 15
sudo defaults write -g KeyRepeat -int 2
sudo defaults write -g NSAutomaticCapitalizationEnabled -bool false
sudo defaults write -g NSAutomaticPeriodSubstitutionEnabled -bool false
sudo defaults write -g NSAutomaticQuoteSubstitutionEnabled -bool false
sudo defaults write -g NSAutomaticSpellingCorrectionEnabled -bool true
sudo defaults write -g NSLinguisticDataAssetsRequested -array en en_US
sudo defaults write -g NSUserDictionaryReplacementItems -bool false
sudo defaults write -g WebAutomaticSpellingCorrectionEnabled -bool true
sudo defaults write -g com.apple.swipescrolldirection -bool false
sudo defaults write -g NSQuitAlwaysKeepsWindows -bool false

# Ask for password after 5 seconds
sudo defaults write com.apple.screensaver askForPassword -int 1
sudo defaults write com.apple.screensaver askForPasswordDelay -int 5

# Screen Saver: Flurry
sudo defaults -currentHost write com.apple.screensaver moduleDict -dict moduleName -string "Flurry" path -string "/System/Library/Screen Savers/Flurry.saver" type -int 0

# Hot corners -> bottom left -> lock screen
sudo defaults write com.apple.dock "wvous-bl-corner" -int 13
sudo defaults write com.apple.dock "wvous-bl-modifier" -int 0

sudo defaults write com.apple.dock autohide -bool true
sudo defaults write com.apple.dock orientation left
sudo defaults write com.apple.dock launchanim -bool false

sudo defaults write com.apple.finder AppleShowAllFiles -boolean true; killall Finder;

for dockItemLabel in \
	Launchpad \
	Safari \
	Mail \
	FaceTime \
	Messages \
	Maps \
	Photos \
	Contacts \
	Calendar \
	Reminders \
	Notes \
	Music \
	Podcasts \
	TV \
	News \
	Numbers \
	Keynote \
	Pages \
	"App Store" \
	"System Preferences" ; do
	dockutil --find "$dockItemLabel" >/dev/null && dockutil --no-restart --remove "$dockItemLabel"
done

killall Dock

chflags nohidden "${HOME}/Library"
