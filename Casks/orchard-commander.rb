cask "orchard-commander" do
  version "2.1.2"
  sha256 "af16e73be85bea1221b44473a8c7819f75aaeb72184acad8c54da68290f085c5"

  url "https://github.com/sandboxly/orchard-commander/releases/download/v#{version}/Orchard-Commander-macOS.dmg"
  name "Orchard Commander"
  desc "Two-panel file manager with previews, archives, servers, search and a terminal"
  homepage "https://sandboxly.github.io/orchard-commander/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Orchard Commander.app"

  zap trash: [
    "~/Library/Application Support/Orchard Commander",
    "~/Library/Caches/Orchard Commander",
    "~/Library/Preferences/io.github.orchard-commander.plist",
    "~/Library/Saved Application State/io.github.orchard-commander.savedState",
  ]
end
