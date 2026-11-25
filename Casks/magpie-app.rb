cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4785"
  sha256 arm:   "1db3106e3a2c789a15216aee57ab361f8aeea01fcd70a82cd6805ab6f2f2cd16",
         intel: "dded077e266dc5beb480c18d16840701791197ae504b8c87cab375664daa49ba"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
