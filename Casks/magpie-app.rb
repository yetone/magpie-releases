cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2460"
  sha256 arm:   "60ab73be756fe48c4eab578f55f46bcb34d7ad6e285e7382e80d8f3299356cb7",
         intel: "1ecd4d546107b82b4b8ebeb8c9fc871fce4bcdfad59512f29acbc050872e8660"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
