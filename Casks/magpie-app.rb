cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4968"
  sha256 arm:   "d06d6af979a4d5858a2f0b36b2f75509750b64ecd26eb30d7a11adb512bcb9ee",
         intel: "8ec2776cffa81522b8722114bd9aa17ca4c57a9a1a2c6da971dd637ea29a004a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
