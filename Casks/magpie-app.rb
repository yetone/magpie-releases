cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2664"
  sha256 arm:   "4df14d7bd4d7cf5714b874e70ea47de61104811c341f0d723f204dd5b588a5f9",
         intel: "c1733b22354ec5fc5a0c55b6e81ea6f631cd50b8464d875fa28934ebb2414bc6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
