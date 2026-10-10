cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1150"
  sha256 arm:   "bfeb3ccfddf4627ef9ba9d84e67c01696082d3da6810a51a4ebbe730559c308c",
         intel: "8fb9e5eab83b52f86eebc7331c06a01c778252e29b3949f67db6c24fdc3dc9cd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
