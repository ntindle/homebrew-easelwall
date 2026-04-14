# Install: brew install ntindle/easelwall/easelwall

cask "easelwall" do
  version "0.1.0-beta"
  sha256 "ae24f18c4eb8a240cede4b0f17e7313dac42ee07a7aac9a52206dabc8022e81e"

  url "https://github.com/ntindle/EaselWall/releases/download/v#{version}/EaselWall-#{version}.dmg"
  name "EaselWall"
  desc "Daily impressionist painting wallpapers with museum-style mats"
  homepage "https://easelwall.com"

  depends_on macos: ">= :sonoma"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "EaselWall.app"

  zap trash: [
    "~/Library/Application Support/EaselWall",
    "~/Library/Preferences/com.ntindle.EaselWall.plist",
    "~/Library/LaunchAgents/com.ntindle.EaselWall.rotation.plist",
  ]
end
