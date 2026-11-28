cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5000"
  sha256 arm:   "440400a4cc2e3ae6624230c2f0305a4bca41e98eef2af9305911c639cff2d0c9",
         intel: "1c153335a1d98b83f8df04bc533d98b91547eb44e51fb87f900e0f1103d07a57"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
