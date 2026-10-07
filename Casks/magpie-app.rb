cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1100"
  sha256 arm:   "a45720d5cd04d5dd8cbc22906ec3a468fcfe9093c0566caba3f6dd26a48786a3",
         intel: "e339cfbc96416bdd4ab91a8c03a0c2785bd9c06e8c05b2156632630d643ad955"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
