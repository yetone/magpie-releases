cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2247"
  sha256 arm:   "d6cbf05d4490509b73cccca16b0eafadca127da937ed2ea296e4c04b69e8a51f",
         intel: "d757b48e9ba838b4b1470a775ba4c66a40517ffb5d8da30534d0c22752b0fafa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
