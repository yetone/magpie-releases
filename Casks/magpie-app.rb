cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4112"
  sha256 arm:   "5e4c2f160edb4693671fad64876bc54e9b325572184b08d2679641b1c80d4a89",
         intel: "72419d053f23dc6869bf78a3f5ea9672c1e26d669220a0fe8da87f1f6797e43e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
