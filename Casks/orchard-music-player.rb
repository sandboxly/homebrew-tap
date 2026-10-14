cask "orchard-music-player" do
  version "1.1.0"
  sha256 "1356eccd769354996c81c3b23339e531a550c6cf534f4bd04a902b37d8bf62d5"

  url "https://github.com/sandboxly/orchard-music-player/releases/download/v#{version}/Orchard-Music-Player-macOS.dmg"
  name "Orchard Music Player"
  desc "Music player for your own files with gapless playback and ReplayGain"
  homepage "https://sandboxly.github.io/orchard-music-player/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Orchard Music Player.app"

  zap trash: [
    "~/Library/Application Support/Orchard Music Player",
    "~/Library/Caches/orchard-music-player",
    "~/Library/Saved Application State/io.github.orchard-music-player.savedState",
  ]
end
