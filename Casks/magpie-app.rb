cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4732"
  sha256 arm:   "4bc591d10b6822f6083324be17fe9fba10c3a436338a26b44d8a267cf883e365",
         intel: "d6a01c2f13727c3594f6ebd0b6f2c8740f37cf43272d2433e3f813a84e9f6087"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
