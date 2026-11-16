cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4317"
  sha256 arm:   "63774a2961963a81bbeff3ab353841184d243a218f29af1682f2b7291c0e677f",
         intel: "9ce843110700b3d429cb05225b2b4a01a58f7f11f024eaf9128e2202f3aa6abc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
