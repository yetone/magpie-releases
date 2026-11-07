cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3291"
  sha256 arm:   "bd0ab884f6baf6b6c8eba3b3db2f570291f190c53013c2a68024f57a85ad39b7",
         intel: "047faa3a6a0740a6b857b33ffa1e7292bf4dd3c56d982ac71516c0aaf9e70383"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
