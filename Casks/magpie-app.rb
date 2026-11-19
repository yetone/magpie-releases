cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4522"
  sha256 arm:   "b87828c1297eee3eb60b3da3a0be5d41033e04b19ef9965429d51af8c4b1044f",
         intel: "79983c466d60ece4dc73d818e4e9371048a572e930d836ba355901ef4f7b5ea7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
