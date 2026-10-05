cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.979"
  sha256 arm:   "e0774985bd1defafc319b46af405a814be33fdd4e323f525507f31c020fd95f3",
         intel: "04391e91a2bd941d910bb9bc0b063261b11db3d7fced6ad1ead6f799c66ecf37"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
