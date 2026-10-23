cask "zephydian" do
  version "1.0.1"
  sha256 "f54097342ed7493660dc5090669e1d9ddcf234ee235097cfd1b8ddc541183436"

  url "https://github.com/ahmastan/zephydian/releases/download/v#{version}/Zephydian-#{version}.zip"
  name "Zephydian"
  desc "Utility and gaming corner, with more utilities coming soon"
  homepage "https://github.com/ahmastan/zephydian"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Zephydian.app"

  uninstall quit: "com.ahmastan.zephydian"

  zap trash: [
    "~/Library/Application Scripts/com.ahmastan.zephydian",
    "~/Library/Application Support/Zephydian",
    "~/Library/Containers/com.ahmastan.zephydian",
    "~/Library/Preferences/com.ahmastan.zephydian.plist",
  ]

  caveats <<~EOS
    Zephydian isn't signed with an Apple Developer ID yet, so macOS blocks the first launch.
    To open it, try once, then go to System Settings > Privacy & Security and click "Open Anyway".

    Features you switch on may ask for macOS permissions such as Accessibility. Until Zephydian is
    signed, macOS can forget them after an update: use Settings > Permissions > Repair in Zephydian.
  EOS
end
