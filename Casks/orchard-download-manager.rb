cask "orchard-download-manager" do
  version "1.0.0"
  sha256 "80cb98ea2920c8c63673444fd11e1e068d2a3bc7c17e5135348e700900766792"

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
