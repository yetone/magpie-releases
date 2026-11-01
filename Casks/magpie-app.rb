cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2561"
  sha256 arm:   "0b395d9905081493be06cabad15111874b337543377c01084dbf1915833a5306",
         intel: "c613a4cbb9083af3fe9e4c15e65c5f2507e848a7a48f3772ef1609a87064feb8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
