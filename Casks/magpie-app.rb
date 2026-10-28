cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1848"
  sha256 arm:   "9f1c59e8c495b30bde1ff89b94d79dc4c653a221a557775df19e445ce7e309b8",
         intel: "e8841791ae9927109c17f33be704473b7e0ea1e98df5388da7294e45c1dbd720"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
