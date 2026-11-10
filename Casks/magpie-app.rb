cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3558"
  sha256 arm:   "2a50b73811513488c81e90b78b0b71d218c0ba4b2b208a10c0ab723262d10d80",
         intel: "893aa78bb77654047c21106fb33a8d31859f0a9ba2a23bc4193cf6d1b35c0f0f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
