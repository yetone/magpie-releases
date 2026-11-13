cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4047"
  sha256 arm:   "11a64c56df1e4e37fafa641da15c7b47102235bcedc0125f4dd5873fc5f4d535",
         intel: "331908eb156dc76228b6296f60a87bd22b3ba4e9ae81a5e2c319fe1ea04eb5d5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
