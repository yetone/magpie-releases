cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2489"
  sha256 arm:   "bc3a92a73e5d97691a0d2d040102696229de78cea5b1a9e1be26aaa14e5afcb3",
         intel: "2988041c48504e44f90657dd60450a8e83bc06fae270ab94e90592946a6bc277"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
