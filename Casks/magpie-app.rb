cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2532"
  sha256 arm:   "a57b084bf04fd7eafece06983b81323e905b61d597b84c57f1c648444402a067",
         intel: "e0c3a70b4ba3725cbd3fa50eba5e8662c9edbba1b6ba5c08256efec3be06b73c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
