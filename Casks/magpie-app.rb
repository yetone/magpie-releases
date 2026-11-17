cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4400"
  sha256 arm:   "a528205adaea8372498fc9b67a9040e67eb7db2fea984dd72e51c0e70dae6536",
         intel: "2c4b4ae1cc26e0622a2bae3307ee23fc7d330a2b808d663abf7471be665d27c2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
