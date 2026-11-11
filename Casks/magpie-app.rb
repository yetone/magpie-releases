cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3745"
  sha256 arm:   "bcf3ebe69205d46c0fd90677ce6c6af823d4304bc27499ae24634a9bf9b7bd9e",
         intel: "406b88984ce5f658bb8e51c6df9268e72720d370ea07b7f59adfccf61794eec1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
