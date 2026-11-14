cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4214"
  sha256 arm:   "33deb7bb0a3679dd2dcf6c58b454ec02df86d379046f10b0cf85e9cec143075a",
         intel: "909ab2540c8bc906f38f7e920a1478a1c2621437845d7f2ce273d89343b7a2c2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
