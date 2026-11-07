cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3254"
  sha256 arm:   "f87d51447d58266b9c0e951423c03e0bd8c6361833280f12e8506df3b117c873",
         intel: "11f2b3e3b440f3111307ed5644bf4a04331233af17cf608151a7dc7a030a4206"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
