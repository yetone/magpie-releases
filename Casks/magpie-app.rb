cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2115"
  sha256 arm:   "9bebfde16782dd07cdcd3e47f2d5adca8436602db32674c15291add2ad8f4256",
         intel: "488d9f7fef31e91914a5f4fca5d1cf86d1320ac930377b1b9f72ff637b764473"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
