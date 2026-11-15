cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4248"
  sha256 arm:   "685027bc94a3d4d407ec91e9fac00602032a007220f65643334f652fd9855069",
         intel: "1e1094abb7da3769f9c9e6d59a445f39374f94bc0b764952a103a1b8a177c1da"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
