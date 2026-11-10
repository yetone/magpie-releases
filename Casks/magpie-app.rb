cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3604"
  sha256 arm:   "a7226d4a2fcb77ac9d964c0c44ef0e5084e44318070558f7e358a2fc4e97a544",
         intel: "a1bbbf2dfe7df349a92f96dc6bb6f4e92d5b648fa1666420abc7aad0bd2c64ec"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
