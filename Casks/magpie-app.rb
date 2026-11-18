cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4470"
  sha256 arm:   "b07cd59d1946197c84b9be4216cc8582054a15de85402133ea3992d0d2bd8e22",
         intel: "0a5737f7dc9574029c3714feaffd9f88931c32c8fa84625ee971dd5018453a22"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
