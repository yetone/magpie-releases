cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3073"
  sha256 arm:   "80201eb90606afc8376bafd45ac6018ac440846594178a5f2ab790f876eada43",
         intel: "7a4520a7bd8afe1752115d2ee73059f484b8f209f7cf3812f0cf58a79689a012"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
