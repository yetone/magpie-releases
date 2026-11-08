cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3312"
  sha256 arm:   "374893eb86b60e4a6454004debbd784d764c1a6ef40f047faebfcc9d7e02fc03",
         intel: "af570fd551644a74a6b6d65353c96723d5100422d5e44cebbd8bf03d25801fd5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
