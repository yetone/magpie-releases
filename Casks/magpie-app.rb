cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1846"
  sha256 arm:   "7ef3d8143f889a5bbdc8ae94db42360242c5e720eb5fbe7f47e753e6d6c702af",
         intel: "accc17b8a439296a6e04f73df6c4fd4b9176a3592b26e2c9f25166d57273ccd5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
