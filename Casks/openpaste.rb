cask "openpaste" do
  version "1.1.2"
  sha256 "1368870292e65cc4869b8077718d95ec50fb9f3ca7f8ea2eb8f036d03d893425"

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
