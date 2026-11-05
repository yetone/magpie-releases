cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3008"
  sha256 arm:   "ff079748bdd7f4c842ed126a8da62f8c577748a8f42defa572c4ba65fd692da8",
         intel: "c4762125b37b0484d735e4b72f0877d74402aed6b989134afd4375f7054fe903"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
