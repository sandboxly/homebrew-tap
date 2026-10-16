cask "orchard-download-manager" do
  version "1.1.0"
  sha256 "189851b45e5a4222661ad0831540a1b42659d9a5783bdf4065249efa0f405501"

  url "https://github.com/sandboxly/orchard-download-manager/releases/download/v#{version}/Orchard-Download-Manager-macOS.dmg"
  name "Orchard Download Manager"
  desc "Download manager with segmented, resumable downloads, a queue and a scheduler"
  homepage "https://sandboxly.github.io/orchard-download-manager/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Orchard Download Manager.app"

  zap trash: [
    "~/Library/Application Support/*/NativeMessagingHosts/io.github.sandboxly.orchard_download_manager.json",
    "~/Library/Application Support/BraveSoftware/Brave-Browser/NativeMessagingHosts/io.github.sandboxly.orchard_download_manager.json",
    "~/Library/Application Support/Google/*/NativeMessagingHosts/io.github.sandboxly.orchard_download_manager.json",
    "~/Library/Application Support/Orchard Download Manager",
    "~/Library/Caches/orchard-download-manager",
    "~/Library/Saved Application State/io.github.orchard-download-manager.savedState",
  ]
end
