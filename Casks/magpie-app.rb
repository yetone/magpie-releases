cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4815"
  sha256 arm:   "11782b7026aa7bd61cacdfb840b347eedda06ff7ddfb3c2b971768fcf17c5e4c",
         intel: "546e7de96b663c24924194b9884b52b9f3537ca9543bded738ce3382f568cc76"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
