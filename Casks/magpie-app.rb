cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2310"
  sha256 arm:   "cd213033a1aac78b4080118532bccf20a78752e91f558a6b3198aab862a8124b",
         intel: "f904ded090f082d1cb4406cbada22857c09df6a9c59b73fb0104d596770421a2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
