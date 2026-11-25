cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4780"
  sha256 arm:   "73f163176e281cac9be9d791010748f8712c8e99b632f166aefa92ba8b2c9de4",
         intel: "dcd953712aae183aafcb2323da5cd5e0bbbce6f6a9ab40771ea9d54a611e7120"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
