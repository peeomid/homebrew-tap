cask "devboard" do
  version "0.2.0"
  sha256 "ec4d198b2520e04902220521b38f253081d9fac92df8de729ff15d5fcc4dec66"

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
