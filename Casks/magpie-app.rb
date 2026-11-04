cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2916"
  sha256 arm:   "ea501daa54bbe0bc6d1dc7d4d1e26e6a15e5c91dcfb64f6f97582bc5d7de3519",
         intel: "379fe3672565df31f7609fcc407ee4db4ed0806e7e45c5e1f3c7c4ee26b8c2d3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
