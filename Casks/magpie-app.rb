cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2922"
  sha256 arm:   "651a8099169c44d0500da5051f531dd41d72aea5b237eae51a6155bd38a3c5e8",
         intel: "f7275a6d6031cdaa92f944eb270211edc856a249c8ef256a7f453f47dff421b2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
