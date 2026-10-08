cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1109"
  sha256 arm:   "dd083f359a10636fe42d47851f612bb36e914a8446ddf83f951e51217eb1d746",
         intel: "6f308c85824ec4f767e6a5ffe21319e74b3199f5d5410e2283a8ba495bdb71b2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
