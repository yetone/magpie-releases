cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3342"
  sha256 arm:   "17f83669ed41a4a6a9d819849a5eb3b9d263a964dcba046931d3bfb1e6ce50b2",
         intel: "dc0f3d9aa610c9763f455ce018a1ca45763c6368757aca860ac9b0dc5c363648"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
