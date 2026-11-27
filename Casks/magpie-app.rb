cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4918"
  sha256 arm:   "e0c739178303882b5eb1d25a39d784a249c95a29a5b938bfd6f042f1a36cf614",
         intel: "233c208c7bccdbad6e384da357c71ab8cb4642feea2c02bfbd405847ecf2cf45"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
