cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3332"
  sha256 arm:   "5a78719eae624df51b94207a22e2255babd3c323348048340c88d25ceaa7db95",
         intel: "83cf6901a11293a89d7af3db650b7a4b2d372faf00738dd44c5ed49f39a0e0e6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
