cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3178"
  sha256 arm:   "cf6a1a29ab53100c3e52e2c52691a55a31847ba0890e5d4e15273d5258cd8376",
         intel: "cc08e8027260ec64cfcf73ec7c10ca37969cd02b724bbe7f0bc700141e6fce9b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
