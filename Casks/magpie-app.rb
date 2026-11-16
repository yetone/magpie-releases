cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4329"
  sha256 arm:   "ceeea52e70ad4ff5389bf41fb668d5376b2dbf2b396bfb05fd4b20d3eb87cbd3",
         intel: "b9a535d341fbc34fd76d296d74723ac64bb5955b7f0ad5f3e86cb77d308f2dd7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
