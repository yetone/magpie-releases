cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3770"
  sha256 arm:   "d07e928d376f7d5bb2ed457b613cc8ddf853dc3e0ffc194cd5226523b90330d4",
         intel: "2c8e2d3da1a8086f3dd1b68b91dd882d16fddbac4cfeaf388df7cceb047256e9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
