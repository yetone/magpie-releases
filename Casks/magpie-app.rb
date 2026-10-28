cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1897"
  sha256 arm:   "b8a996a0c75c6470225a5e3125480fe8126848478d4ff8f43bde89153702b1cd",
         intel: "cfcf59a19f2ed3bcac37c2e0f9b8b4d4bf9232f7c1708ed1dcf7bd0ad88d0c2e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
