cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4148"
  sha256 arm:   "d337dc7a65853f6c24746583568887f4d98f228abde652415d5cc4d9aa58fe29",
         intel: "ca01ecad7b59a226381779382a7ac81001c6174009c8d9d4272ee56c668b946c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
