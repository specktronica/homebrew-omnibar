cask "omnibar" do
  version "1.1.0"
  sha256 "d024fb1ce3727a9e0209e730d308178c83795efb9317a72433e6609266bc6dd8"

  url "https://github.com/specktronica/omnibar/releases/download/v#{version}/Omnibar-#{version}.zip"
  name "Omnibar"
  desc "Windows-style taskbar"
  homepage "https://github.com/specktronica/omnibar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Omnibar.app"

  uninstall quit:       "io.specktronica.omnibar",
            login_item: "Omnibar"

  zap trash: [
    "~/Library/Caches/io.specktronica.omnibar",
    "~/Library/HTTPStorages/io.specktronica.omnibar",
    "~/Library/Preferences/io.specktronica.omnibar.plist",
    "~/Library/Saved Application State/io.specktronica.omnibar.savedState",
  ]

  caveats <<~EOS
    Omnibar needs Accessibility to list and control windows. Grant it in
    System Settings → Privacy & Security → Accessibility. Screen Recording
    is optional and enables live hover thumbnails.
  EOS
end
