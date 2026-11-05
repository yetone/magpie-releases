cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3026"
  sha256 arm:   "ee0fc5b0925d5415bf31586bc8f1004e7ec38db9bad5fd32494f2d5aa62ac416",
         intel: "173fcc452dbc671cb020bd1ff8ee079e543496e42b5d03a10cb6032bd408d7ac"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
