cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1935"
  sha256 arm:   "cc3596a232a583d757781a6e60f4f3ba4ce365ab887128bf306fcc0f1e27c8c0",
         intel: "0f6f8de1091282495b62064f6168df88d03cdbdf5027e34a64dcfb9c11d9c4e6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
