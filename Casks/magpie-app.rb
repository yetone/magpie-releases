cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3959"
  sha256 arm:   "82a8f71934834708efe8cde38433ee53db0018763b06c75a627c8a4425175a02",
         intel: "2ea09bea7c8407e9e70c0aed32c6a76908596ab4a2cee946cc00ccfb3f93049b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
