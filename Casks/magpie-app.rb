cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2605"
  sha256 arm:   "b85c0e143e905a2ab7c008cd49f226b5a4f2d4874278a96fac425b558c4b08f2",
         intel: "ee2656bae4311006ae054cee544fcb77f2e68b294ef9a2e74c3e9debe5c8bf34"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
