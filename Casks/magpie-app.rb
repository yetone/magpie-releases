cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1959"
  sha256 arm:   "4f5ca4cec0040cb7685ffce8edcf424d8bda0a315158867fa6228bc3a7e81ace",
         intel: "e5e050d1ebcb8f33659a55eece83c6448654fd53e89166330c416feb8e0ff06a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
