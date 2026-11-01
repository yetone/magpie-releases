cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2588"
  sha256 arm:   "e30d41fee67e5ad4d579f25151e34b5ff9581a326439faf5a3a22f185479df44",
         intel: "edbe51532e747ecad89454a8c15a80dbdd5237a395f387b47b6c3b069c5c6cc6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
