cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.910"
  sha256 arm:   "34370e24c36ec883137c6137fe111ab06b3dd294536e093e429ed4dc04bedb32",
         intel: "be7675edfd231375f2b59c54cb15cd10a71455a769df53722489164b0eefa5f3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
