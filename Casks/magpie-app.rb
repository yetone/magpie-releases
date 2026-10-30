cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2138"
  sha256 arm:   "1fa2d56f9c4e55bdeb429191aca4b92d32e71a25e9f57cc004575e4608a3fa95",
         intel: "8d171ba9f63386f7ca2c921c2224dfade262d5626c7a7fd0e789bd2fb5be5fc8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
