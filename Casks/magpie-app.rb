cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4398"
  sha256 arm:   "f12165b2d332a2f8866423508bc3a8c0b970cbd568d0aff3a40dda4889fa96ca",
         intel: "0a8858753ccbf39c6f7ce933b49a769689f9caa2702dd388ee124ba691907acc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
