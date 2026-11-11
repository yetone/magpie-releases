cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3709"
  sha256 arm:   "9b806f49a5d6489008393d853e16a333133ecb785fb729de3dc3678d3ac01536",
         intel: "3ba76ae3b6f728e897d19e584c2915b4ad06b1506b1fa197cfba47a6267c5ea9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
