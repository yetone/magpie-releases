cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3261"
  sha256 arm:   "f0c6ee9c162c01d11e25c7f3fd5c2a58ee05030d66f342ed01541fc54e53d2fd",
         intel: "bd3f2f8284183072f989c180547a7b4edd1b7837e8d918dac937e22b6558d89c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
