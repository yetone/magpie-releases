cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4343"
  sha256 arm:   "5b034888e1ea07dd81c95f5534c2d6384c9f6f9aa85c6d61982775f00db94020",
         intel: "b72f14d3346560fa500c0955689bd5b3bee13584fa100492d75d0d33de86ebdb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
