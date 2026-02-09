cask "devboard" do
  version "0.1.0"
  sha256 "6b67825866f3435f5b0235cb8322f842817454a100370bad129d9b344d9666ea"

  url "https://github.com/peeomid/devboard/releases/download/v#{version}/Devboard_#{version}_aarch64.dmg"
  name "Devboard"
  desc "Local project dashboard for macOS — visual companion for prj CLI"
  homepage "https://github.com/peeomid/devboard"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Devboard.app"

  zap trash: [
    "~/Library/Caches/com.osimify.devboard",
    "~/Library/WebKit/com.osimify.devboard",
  ]
end
