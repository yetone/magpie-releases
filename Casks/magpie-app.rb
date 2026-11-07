cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3211"
  sha256 arm:   "bbe4861c1735edd9aa735350d0e088f7a93904e93db2c60741ab9ac59bda4d52",
         intel: "cb56355871fb646921dc324ed88209d639fa8b225efbcd50a3881b1e9c4d4e9c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
