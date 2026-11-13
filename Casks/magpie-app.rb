cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4004"
  sha256 arm:   "2d7bea4c9ce6b4d60029f01c666af4cb001a4340056e4b841b5de12f3fd38087",
         intel: "8de2d26295d47e1d64c168bdfbf37d15e66b3b63880c752d9c8a27a88cc4c778"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
