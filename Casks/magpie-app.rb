cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1977"
  sha256 arm:   "80b184c3f0a8fd58b5985ce0cfae77800af8358b743511fa9be2407c92ac3072",
         intel: "023c4e6b5b55e270cc91ab3eb6e919802fc4578a70da970eb6cf5d4bb4a57493"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
