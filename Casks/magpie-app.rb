cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4984"
  sha256 arm:   "f13267221e34b41f1d3e57dec2fe045c7cc5da30cc0a5404f1be3f70843944ab",
         intel: "abac48b927ba0d8660fc097c6015c32d603056880a5d479d0ff264ab666b8773"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
