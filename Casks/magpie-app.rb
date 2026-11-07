cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3275"
  sha256 arm:   "95c19d6676981b82421de74bd1bd28f7ca4e59b84bca2ffa43369a33498b53cf",
         intel: "4b4617df728e90f04149cdb5af0327ffd94066358ccc8419b7af59835f9492f2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
