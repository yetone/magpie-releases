cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3030"
  sha256 arm:   "210761f0e97d1db6f345d1e7ee6e4a7034866d942c050a8e78ddbeb0ed2ad198",
         intel: "e596d464838f14e7ae3f177a28ca4b7d7f1e3c6a840d2982ba587f0d048b2d6b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
