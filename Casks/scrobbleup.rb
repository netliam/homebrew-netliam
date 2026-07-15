cask "scrobbleup" do
  version "1.2.6"
  sha256 "sha256:d7127e22696135f693f9d7ef54d14b7fd9fba4d7edd923a56a7447b43061ec3b"

  url "https://github.com/netliam/scrobble.up/releases/download/v1.2.6/scrobble.up.dmg"
  name "scrobble.up"
  desc "Lightweight ListenBrainz & last.fm music tracker"
  homepage "https://github.com/netliam/scrobble.up"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "ScrobbleUp.app"

  zap trash: [
    "~/Library/Containers/com.netliam.ScrobbleUp/",
    "~/Library/Saved Application State/com.netliam.ScrobbleUp.savedState",
  ]
end
