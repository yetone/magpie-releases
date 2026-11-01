cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2540"
  sha256 arm:   "50524d019a0cdbedc7cea11a874801f323ac2d1833696fd7a880a436e84fa50f",
         intel: "91cf4ba9bea9eeef7e7d810b7d4b0b3c7b3cd0b01d73fc505efeb83ac4402726"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
