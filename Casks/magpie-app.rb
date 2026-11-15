cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4278"
  sha256 arm:   "b2d32196e803094f56314ed555e7f0feb9472a20f79452c56be11cf972043cc3",
         intel: "01b6db1edd8b48eb37b07f47f10282d41542c685416b906c8f542d5f2b866f64"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
