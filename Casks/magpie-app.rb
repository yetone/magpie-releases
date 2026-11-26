cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4897"
  sha256 arm:   "389358f2d2c6ed743317c243fce30de6d063108b9e3b0851e73f94a20ceb79f8",
         intel: "5d22d98ac410497d4748bd6a2b5645f00c1deb458c1075121a89a395e57a8a25"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
