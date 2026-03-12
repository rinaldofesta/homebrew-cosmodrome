cask "cosmodrome" do
  version "0.1.0"
  sha256 "e91a94784d77c22ca1c8aeff2f82391f8371e2656eabce6d0e39dd3fbe4c2141"

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
