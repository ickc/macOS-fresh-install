# The Scripts

On the old Mac:

- `list-installed-packages.sh </FOLDER/>`: Export lists of installed things into `FOLDER` [^listPackages]

On the freshly installed Mac:

- remove sleep image: `sleep.sh`
- Install brew and npm: `install.sh`
- Install packages
	- `mas.sh`
		- `brew-cask.sh`
			- `download.sh`
		- `brew-cask-fonts.sh`
	- `brew.sh`
		- `upgrade.sh`
			- `npm.sh`
			- `gem.sh`
			- `pip.sh`
- upgrade package installers
	- `upgrade.sh`

[^listPackages]: This is for future reference only. The scripts below does not use this information. The idea is to use these files to keep track of what was installed before and update the scripts manually if needed.

# No Cli Install

Manual Settings:

- Terminal:
	- default solarized
	- change font to Consolas
	- change cursor to `|` and blink  
- TextMate:  
	- install Solarized bundle
	- choose theme
	- set font to Consolas

Manual install these:

- Davinci Resolve @manual(behindRegistrationWall)
- mathematica @manual(behindRegistrationWall)
- iOS Font Maker
- SMARTReporter
- tsmuxerGUI
- Brother ControlCenter (DCP-7065 DN)
- MultiMarkdown Composer @waiting(caskroom/homebrew-versions)
- hdapm
- BT747
- OS-X-SAT-SMART-Driver @unsign
- Remoate Camera Control @cancel
- MurGaa Auto Clicker @cancel
- ti connect @cancel
- WD Drive Utility @cancel
- Cisco AnyConnect - @replacedby(openconnect)
- Window Tidy @replaceby(spectacle)
- Markdown quicklook @replacedby(ttscoff-mmd-quicklook)
