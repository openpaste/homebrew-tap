cask "openpaste" do
  version "1.7.0"
  sha256 "aaa05dc9211f07c56cb1e7056512d4a9f81d323fc6d6c76e04114516e8c2aefd"

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
