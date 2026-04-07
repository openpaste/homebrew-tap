cask "openpaste" do
  version "1.7.1"
  sha256 "54a722119617faf776425bd746239082921281d47630e7f99b86a90b0cf42e33"

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
