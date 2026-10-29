cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2094"
  sha256 arm:   "66a623352e604716feb7a682111f9b56543eeaf9147fe3f4b5359c1a61da643b",
         intel: "33ed4af875f89e2e675afef9fa0096a8c27a40db52805c22e78cad6c78a9e63b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
