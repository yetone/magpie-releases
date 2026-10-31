cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2326"
  sha256 arm:   "382abda86753f34ad4cafdbd772d4a1ab81c7a2992ee83e410b31b4fd7e0aeb5",
         intel: "ad9c45498e56e2c37be04063d99f246b4d0e136ba3387164ef6d05fbb75c16fc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
