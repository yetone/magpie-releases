cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2074"
  sha256 arm:   "ea25d88a08bc421535d873659bfce07fc3df223aea8538f68f287b5cbea60a27",
         intel: "047acb6c5eb2c131857550b006c2c207cd23528532cdc5dc22248a6af034f424"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
