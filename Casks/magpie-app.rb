cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4709"
  sha256 arm:   "1ef897b4e3e26ec268bb7f3d3bee1ac0a4700f3fd5f9c5b734dc127e40caefba",
         intel: "ac16191a33072e80c75f7091dee89d7349a3e069fbd0cf7fce3be727e33bbd9d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
