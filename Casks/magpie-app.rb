cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4814"
  sha256 arm:   "317862a4c4cbc25b86d90c70429aad4020f9fafca39ea0d6e26bbc4303d37646",
         intel: "96730a6ceda386323eafbe05299ca4cb5b0adb410f05425f45d9966ef0061557"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
