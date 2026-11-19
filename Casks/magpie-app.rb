cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4527"
  sha256 arm:   "9dc20806791288f6649279182ae5ac3a2bbbd34b73fad807df3dfd74fbc6dcaa",
         intel: "0d2623ba37e61e29acd3e4f207ae4644d0192b7568c0fb7c6d4e58ad4965df16"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
