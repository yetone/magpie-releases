cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2702"
  sha256 arm:   "8720da76eabb1f96e46061055c8cf913fed511f20ef7559b937366de7f3bd3ba",
         intel: "8e5dfaf3e2daa7e9fba2522e32006903d45012e01e07c4dc4b930f6e0375b1a0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
