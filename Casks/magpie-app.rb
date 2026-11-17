cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4374"
  sha256 arm:   "f836c46254bb7c4e826954f2e147471cafbf25342a9979d4c3397097751fd986",
         intel: "805c5f97337ad3c2cefd2211283e2aee5709e46d7f5000c32dc0632047e1e79c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
