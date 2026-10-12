cask "orchard-commander" do
  version "1.0.0"
  sha256 "941920ef1e0728076d6cf4178639ad127bbf4b380b28e7f059549877f77c905a"

  url "https://github.com/sandboxly/orchard-commander/releases/download/v#{version}/Orchard-Commander-macOS.dmg"
  name "Orchard Commander"
  desc "Two-panel file manager with previews, archives, servers, search and a terminal"
  homepage "https://sandboxly.github.io/orchard-commander/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Orchard Commander.app"

  zap trash: [
    "~/Library/Application Support/Orchard Commander",
    "~/Library/Caches/Orchard Commander",
    "~/Library/Preferences/io.github.orchard-commander.plist",
    "~/Library/Saved Application State/io.github.orchard-commander.savedState",
  ]
end
