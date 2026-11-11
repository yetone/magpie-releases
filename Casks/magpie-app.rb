cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3748"
  sha256 arm:   "9f372eb227dd3dc128133d8e108df2e64ca1adeae1e085a5c1e6ebc98cd824e4",
         intel: "a2c82f8346eb8b75fe489591289c391d68387d740a73a35a97b383b5c3167afc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
