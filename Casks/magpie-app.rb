cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.933"
  sha256 arm:   "307349b258474ddaa4349062074b686fa6ddd566fe12767b82a59b4a0230d285",
         intel: "6ffa8b39a07fec6ead81873c1b6ae1cfbcc75a234fe34460c414dff38cfbd3b6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
