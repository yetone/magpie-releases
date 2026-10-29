cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1982"
  sha256 arm:   "f450b77dc6235e797141c07a50193dc2bf10d6348a821b2794cbd5b2d5616be0",
         intel: "ba0dabb997509d1a09181af9a0ff52cf70654fd2500cb7ec6220600a33821307"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
