cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2983"
  sha256 arm:   "e26764f587bf825f38a56cc09e8cec1ce2f1593e9e4c2182d5a5d493c56bf203",
         intel: "8553aa7541733486f1a7dc852ed633f01f7548e207e9a5fdc886557eb187baa5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
