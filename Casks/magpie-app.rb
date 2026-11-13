cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3983"
  sha256 arm:   "674ca08e939da320cb0b4e65a5fae8a59fece91ee557a802c5e5e398072602e2",
         intel: "7261a47b8cc52bfeb67c4096faf208ab6f9bc15919582b9a010239ebc897304c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
