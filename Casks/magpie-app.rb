cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4015"
  sha256 arm:   "05044391a26f602c55cd7cead46f431ec9afc9be651707ef5b3e5bda9ac63389",
         intel: "911523cc1507e3544e728a231006ca9f8befea80108cc7b485eec3f7ae74f84a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
