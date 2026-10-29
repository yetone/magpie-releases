cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2105"
  sha256 arm:   "9039520efe6727c684a7acfaa3c4836004a80586ef1e1304b2251244a4c9aede",
         intel: "cc24261f1e44579428874ad3d9a8f6a94f908c54dcdbdc0058fe8e80e8522dee"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
