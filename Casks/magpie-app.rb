cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4891"
  sha256 arm:   "1ed0731ff2c85a70f698568a1d273192501973907ee5f452a687b62abac9db92",
         intel: "4536ccd34ba0eaae14d521d7460ad06895582cc25a44bed0641722a58169eb7e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
