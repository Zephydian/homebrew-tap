cask "zephdeck" do
  version "1.1.0"
  sha256 "b26c927baf9c5ebca9d726be2f42c2a93cf54565297cf316d13d37a2c6969300"

  url "https://github.com/zephydian/zephdeck/releases/download/v#{version}/Zephdeck-#{version}.zip"
  name "Zephdeck"
  desc "Utility and gaming corner, with more utilities coming soon"
  homepage "https://zephydian.com/zephdeck"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Zephdeck.app"

  uninstall quit: "com.zephydian.zephdeck"

  zap trash: [
    "~/Library/Application Scripts/com.ahmastan.zephydian",
    "~/Library/Application Support/Zephdeck",
    "~/Library/Application Support/Zephydian",
    "~/Library/Containers/com.ahmastan.zephydian",
    "~/Library/Preferences/com.ahmastan.zephydian.plist",
    "~/Library/Preferences/com.zephydian.zephdeck.plist",
  ]

  caveats <<~EOS
    Zephdeck (formerly Zephydian) isn't signed with an Apple Developer ID yet, so macOS blocks the first launch.
    To open it, try once, then go to System Settings > Privacy & Security and click "Open Anyway".

    Features you switch on may ask for macOS permissions such as Accessibility. Until Zephdeck is
    signed, macOS can forget them after an update: use Settings > Permissions > Repair in Zephdeck.
  EOS
end
