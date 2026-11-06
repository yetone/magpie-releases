cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3133"
  sha256 arm:   "d2225e0ef813118da092050c5f79eb7f7d9cb3fa1db6078059ff2e9f12735ebd",
         intel: "e3c576db4470f94594cc8dd71d0feef01b2764e8c13a5d0a2e8e3f4f53ddcf17"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
