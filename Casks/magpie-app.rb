cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2184"
  sha256 arm:   "7b594abfa6dfbd6e09e54b06be6e76bcc9edd7635b639c9328dd8e030f868fea",
         intel: "0106e2ec5fe9bf0b16d31cb6fb79e83503ee7df8fa40b627dbdf6c5b679f3ae5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
