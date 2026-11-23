cask "scrobbleup" do
  version "1.2.8"
  sha256 "dcf3373035ee1779be05ca033ff0b9cb8f06db78c359ee81ef95aed96d84ec3e"

  url "https://github.com/netliam/scrobble.up/releases/download/v#{version}/scrobble.up.dmg"
  name "scrobble.up"
  desc "Lightweight ListenBrainz & last.fm music tracker"
  homepage "https://github.com/netliam/scrobble.up"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "scrobble.up.app"

  zap trash: [
    "~/Library/Containers/com.netliam.ScrobbleUp/",
    "~/Library/Saved Application State/com.netliam.ScrobbleUp.savedState",
  ]
end
