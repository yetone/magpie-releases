cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.141"
  sha256 arm:   "f903caad6b7fb4a63dc159771f40e48f26830c9eeddbb5a889884f479d336f72",
         intel: "91e59fe6673ad89c403868190a54b1240563291c6533b2159ceb1442ab2112a7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
