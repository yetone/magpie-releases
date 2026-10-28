cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1872"
  sha256 arm:   "8e17050f0c16f8accf9a27d6c2c06046d80464d8dfd6a22e90f58e7240f669f0",
         intel: "3a823c98cc7f5c9e78d18aecf72ef5fe93c31f574d8e28151be0684bba4874f2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
