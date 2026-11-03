cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2876"
  sha256 arm:   "609934fc7ff17d87706aa4ae2e1246fe36bb7777e18c177ba3c84488f30246dd",
         intel: "b09112848f3b400d52f55396837b3598e01cef9dd20328752b48400e4aa188e7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
