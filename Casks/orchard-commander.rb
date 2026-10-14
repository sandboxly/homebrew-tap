cask "orchard-commander" do
  version "2.1.0"
  sha256 "f8e2ac2202172af48e9ca656e9ab7514e90ddcaa6cc7cda73fe1235afdd65352"

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
