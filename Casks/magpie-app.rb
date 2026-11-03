cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2776"
  sha256 arm:   "3394350e023aa95754692714cb9f78508f23c6afc56b058d4c7eff8bd6c946b7",
         intel: "9f577d77f6326de542d43c37eae1c324d6755aa5d82cc29e68846786dc795cc7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
