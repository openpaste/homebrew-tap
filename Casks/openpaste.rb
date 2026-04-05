cask "openpaste" do
  version "1.4.0"
  sha256 "46f5592e0fd76ec0414300fd4af8bc34d51e48050e02160cfb9c966f6b612fd2"

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
