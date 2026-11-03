cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2834"
  sha256 arm:   "53d7caaf94f51747c52f92b30880a9c69e7743d507d9fc3e1ed991ee7fc7a89c",
         intel: "00fdb9b61f10794195993356082d2c753223e634e9c14d99b27bdc53cc84b88a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
