cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2017"
  sha256 arm:   "2afeddb82f142b4cce7b32b33da0cbb7bf14dd1c715a538b05da1709bec54f9f",
         intel: "4ce16b523e6bc296ec27e1c42785ebbf90f56ba22a061a337101207d8f51fdc3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
