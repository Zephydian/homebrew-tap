cask "surabar" do
  version "0.1.0"
  sha256 "2b92550be0562156d2eb8775993668254b9098341748b5ebca4748883e740eb4"

  url "https://github.com/ahmastan/surabar/releases/download/v#{version}/Surabar-#{version}.dmg"
  name "Surabar"
  desc "Quran reader with mushaf pages and recitation in the menu bar"
  homepage "https://github.com/ahmastan/surabar"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Surabar updates itself (Sparkle); brew upgrade still works.
  auto_updates true
  depends_on macos: :sonoma

  app "Surabar.app"

  uninstall quit: "io.github.ahmastan.surabar"

  zap trash: [
    "~/Library/Application Support/Surabar",
    "~/Library/Caches/io.github.ahmastan.surabar",
    "~/Library/HTTPStorages/io.github.ahmastan.surabar",
    "~/Library/Preferences/io.github.ahmastan.surabar.plist",
  ]

  caveats <<~EOS
    Surabar isn't signed with an Apple Developer ID yet, so macOS blocks the first launch.
    To open it, try once, then go to System Settings > Privacy & Security and click "Open Anyway".

    Surabar lives in the menu bar: look for its icon at the top of the screen.
    `brew uninstall --zap surabar` also deletes your bookmarks, notes, and downloaded recitations.
  EOS
end
