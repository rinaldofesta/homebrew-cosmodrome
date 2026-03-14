cask "cosmodrome" do
  version "0.2.0"
  sha256 "3ca0267be9a773553bb962b99da0b4d88025ceb547795a2ac99de4a561788bb2"

  url "https://github.com/rinaldofesta/cosmodrome/releases/download/v#{version}/Cosmodrome.dmg"
  name "Cosmodrome"
  desc "Native macOS terminal for developers running multiple AI agents in parallel"
  homepage "https://github.com/rinaldofesta/cosmodrome"

  depends_on macos: ">= :sonoma"

  app "Cosmodrome.app"

  binary "#{appdir}/Cosmodrome.app/Contents/MacOS/cosmoctl", target: "cosmoctl"

  zap trash: [
    "~/Library/Application Support/Cosmodrome",
    "~/Library/Preferences/com.cosmodrome.terminal.plist",
  ]
end
