cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2357"
  sha256 arm:   "bf8717d919bb8f764712c0a399004c01bac1d90524fac0accd32548c777090d5",
         intel: "a85438e774dc6db72ba50fc44c490b2d6fc7479b314ca0feb8231814ffbe4149"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
