cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1121"
  sha256 arm:   "df4a0c37a2c5679b820c9b0aec11563cbdc6f9f8da3a9845838e6a33184eaf8e",
         intel: "17745f7d507cde3cb1a323b420aa749d7a0f9904627ff34f7677324e990903d0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
