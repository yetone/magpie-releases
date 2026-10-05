cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1056"
  sha256 arm:   "daba8a2c79228e0b5b6673c6fcd3d01324adb088b2ac6458501257f044aafd90",
         intel: "95807e46fc011119219bf9c825c2f4c47e38f89a67499b304eac080d6a9e38c1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
