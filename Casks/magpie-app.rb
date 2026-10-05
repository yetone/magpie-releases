cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.986"
  sha256 arm:   "693bd4aa12fa9d0e91cd972ed8ffdb8c37f7fc393d8f22472d17f4d3beb7f5ba",
         intel: "aa129e416b16d61eec2d69ac6a125e7b2f6d12e810220e4102974cef0fe77bfb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
