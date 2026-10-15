cask "orchard-music-player" do
  version "1.1.1"
  sha256 "e05e6174438bea7b8a9d85526691a11a986dca8b0914c00fc0fab91a49d20af9"

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
