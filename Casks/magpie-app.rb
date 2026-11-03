cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2877"
  sha256 arm:   "f3e40dd67bfd1479c48b8846b53c73f2f0fe3f1a3c26f6a90f52b73b84783b77",
         intel: "6484023ea5235a2c373cb7ae88792922d0e6233aa6a5126190a71421da0c8a8a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
