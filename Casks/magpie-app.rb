cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2373"
  sha256 arm:   "e27137a3e81d0fcdb1df5a53c858137e0d46827da57e0cb08470a9bf9701db6b",
         intel: "ff3e1df3ad264d7f3ff34ace5a98ad55bf7f1994c7547fed1ed2c06297a9e2c9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
