cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4321"
  sha256 arm:   "02e92b0973683b613b88991302b4328c4979c24acdcf0ea6e24d9c26de939a88",
         intel: "65255342f6bb59421520d160e70d17714b7eb503f159e4c9eadd6604218740ac"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
