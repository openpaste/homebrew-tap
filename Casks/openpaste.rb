cask "openpaste" do
  version "1.7.2"
  sha256 "83d9a39454347dc9e7ec72f02ebdf03a8b746f5fadbd9fadc2ef95c5570cc236"

  url "https://github.com/openpaste/openpaste/releases/download/v#{version}/OpenPaste-#{version}.dmg"
  name "OpenPaste"
  desc "Privacy-first, AI-native clipboard manager"
  homepage "https://github.com/openpaste/openpaste"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "OpenPaste.app"

  zap trash: [
    "~/Library/Application Support/OpenPaste",
    "~/Library/Caches/dev.tuanle.OpenPaste",
    "~/Library/Preferences/dev.tuanle.OpenPaste.plist",
    "~/Library/Saved Application State/dev.tuanle.OpenPaste.savedState",
  ]
end
