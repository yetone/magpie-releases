cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3000"
  sha256 arm:   "fc0d3f37cba72dbf2cbdb51361ac719793b92c9776968a9cdec9d1854b2f2774",
         intel: "55b648b44aa651fea325a77c987175edf80c193d4c74b4874dfd581de96d36ee"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
