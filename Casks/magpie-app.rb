cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3340"
  sha256 arm:   "498308c8528363461818bd5dc530c62f4e67d4f6e7c9b23736dcab54be435e03",
         intel: "b5ba545c8aaf163ba4a701984d0c8cf56d00309bf88919dd4e6c50a93f9be502"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
