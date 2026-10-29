cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2020"
  sha256 arm:   "040b22a130b5fb2c965979c939047ab8f588a1dd87e49702a745105fd7d0230a",
         intel: "d5e8bbad4ee7d7e79214678e216339eb02767cec03e1288db7a3add66240350d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
