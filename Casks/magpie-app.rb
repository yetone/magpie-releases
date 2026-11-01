cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2559"
  sha256 arm:   "a3c98042f6a34f440e6cee768865a8d01a7c2301ba1d280d14936ce9c7957627",
         intel: "0a1503b4664c5750c5b2234f486ca544ade58d7c039d98590a376776c8535f6f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
