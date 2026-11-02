cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2764"
  sha256 arm:   "873873f6772129b19492b8ab6c13d2aff99abb2622f0d68edc8d06ef3532a0f6",
         intel: "53f6cdfc7c4237fba11ba620dffd0536bbe44a8309945ffecf5cd54a33cc56ac"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
