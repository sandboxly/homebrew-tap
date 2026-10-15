cask "orchard-commander" do
  version "2.1.1"
  sha256 "2ff39f1f9d760b90b445a7a698d1f00c4ab2e5094daf246583aa104b4ebd9a86"

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
