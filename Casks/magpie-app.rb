cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1852"
  sha256 arm:   "f775ee0c408f0f152189fe07d8c1221a319b0a65b8329e124921b901874c53ea",
         intel: "a8cb0e4d4aeb2832e457396dc76cf9a6bb283ddfd21785558bd66c96747d3cf8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
