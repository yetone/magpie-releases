cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4673"
  sha256 arm:   "42b33663d3c8199d5a7e24e229b15a5041013cfe17ee9c4dc39596a5e9602644",
         intel: "029561df37fed5866e0cd9b3edbb2d16ff74b58f9fc6f9648573997446890c96"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
