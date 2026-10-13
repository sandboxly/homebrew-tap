cask "orchard-commander" do
  version "2.0.0"
  sha256 "7c81890fcea5d8b0e385bb13ca28f440a27055402618b1a8f504a1dfdec57d3d"

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
