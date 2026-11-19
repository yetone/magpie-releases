cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4510"
  sha256 arm:   "1924d1ee5ed1ed0240b39006e9b0c44cd519ffa406ef49079ac386f65af9b49a",
         intel: "ecbd4de45a9ddc9adbee89a6dbb6e78d1f2760c4fd0396fc9cf5a25f3ec5f5c1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
