cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.951"
  sha256 arm:   "a0ed38839e5335b396df0a42979e3737e503bd22b9e60926774da4553d38e890",
         intel: "7a06205ae04a61d1b3456ff9f944cf67bd4e1c6775bc7946edfe245947cecf4f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
