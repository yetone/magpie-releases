cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2404"
  sha256 arm:   "4430ce2dfb1f254429e86f2e34beccd47597aa3dfbbcd8c12a2b692473e9a69f",
         intel: "17b4daf1d3b1becd252cb30fce6f8e544540f6e8b3218f6b5a7d6140c7093ad6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
