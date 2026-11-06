cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3083"
  sha256 arm:   "0e4c38c74ea25cd216604ce3e28adc5528859b7ccb32fe0a48507920dd188406",
         intel: "9fa8cb4f27abf4638dec3698d69ae892c6d291bde159d1094920b9dd8a3db259"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
