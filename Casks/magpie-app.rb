cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2079"
  sha256 arm:   "3497ceb09514bc56976ddaa51dd2d2d03f76103a5b56cc48911b0cf57b00fc8d",
         intel: "663febb5ba8e604055090d1c808c163b8fcb399c5f8ac7e702289bd49ad58f9b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
