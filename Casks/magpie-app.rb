cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3242"
  sha256 arm:   "4ae9e2f9aba66ba232fd2d28a077ad92a509551f166d7369f86454172e0b463d",
         intel: "2d913b8487b22182269b2d6bd98696cdb353dae72b141429bbab6a327116e1ba"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
