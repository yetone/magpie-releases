cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4407"
  sha256 arm:   "eaad145975744f1a316de0d6028062bef6e3950cf5ad5c8cedec10cc32ed8427",
         intel: "70fa80d332287ab1c9f48a9d6ebb9c53222f61839a96fabde578a67ed5f17684"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
