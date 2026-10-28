cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1969"
  sha256 arm:   "c5e9287c9af3cb0c5aa3e949677b5ada31ac74f84a82af67c6fac9c97fe80385",
         intel: "ec1a13eb88323f29696539abc07f4270f60e73dc115f89a3ae8b5644e8f444ec"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
