cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2868"
  sha256 arm:   "e599bf364eb2126be95d57f96b0c5056b65d2c539b800fef8dfed68d67bfd1e5",
         intel: "075e731b5226ae393b956fba104b1acee177c3271e7c35bedf638830ef53c776"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
