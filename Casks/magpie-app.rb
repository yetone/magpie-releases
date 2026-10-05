cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1065"
  sha256 arm:   "ce0ed8e336ab96faf247deb48e05955f4527e1b87857e57563d21c9c917f1839",
         intel: "6adae8e9170429ce6083678a7a8fa007f5aee488be19da4c8f813519c742820f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
