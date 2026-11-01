cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2613"
  sha256 arm:   "e3ef203158afe1001fbc762e2950eaa77ed125e84bd1e1e0914a7bbbd55ff2e9",
         intel: "68f6c14b0f68824778c51c69e6b0ea7bbbdfb04af7a643b32bdeb038cdda8943"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
