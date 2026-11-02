cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2721"
  sha256 arm:   "99777b0889ca0e1d6528a10a6b06d3cdb65c65addfeb5f1daccf8c65eefba2c5",
         intel: "3c58fd53c680ae04959419c218a71f4d3d7fe908529ccaa1bf8938a3036269cf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
