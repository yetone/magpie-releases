cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2560"
  sha256 arm:   "5bae5d87f1fe9ed41fb12eae15a457a6113e9025b484fce9276cb9f6067d5864",
         intel: "713d9123641d784fad91eea8e6b872d5155b632d0778dbfce4c1429abb10b65b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
