cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3620"
  sha256 arm:   "d9857852409c8595176fa0d628a43cbe1ded848663fe7e42b75275c27a8085cf",
         intel: "50b4f671252382638973ee8265ec9374068640e95c42ebb97c6a1428373786ad"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
