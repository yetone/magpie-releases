cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2906"
  sha256 arm:   "a2f2a3cb0602cbd6642b2c0b95e3a37e435a07bd7fc7808e6e5ed5bb03f34bdb",
         intel: "fd728c71a879e80f2154d949be54762dd88aa8fec7fa611a2b986b761b11caf7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
