cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1112"
  sha256 arm:   "1669c3c68d3a1d4b93cc15a7c3d90444539907324ab2df6247ddc608e3100c27",
         intel: "7cf8de5a723900c58908237ec4e12779a6d9e1bfa71a1c093a707df3c91b829a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
