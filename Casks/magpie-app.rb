cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4555"
  sha256 arm:   "51f5335b37270b5a295b49fc0591c8ab3a9ac67a8f3733f22d93088c1d0e7014",
         intel: "87bc5def0e7a46a812c1a4cc0efce5c42f3cced5ac8340716af58bbda6f66907"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
