cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1003"
  sha256 arm:   "3d70c41cea5ab2ca48da746cd0fa84025adbdc542b20acd4ebf476c8bd0d08e4",
         intel: "c7bcfcaa4cb502da113e04f65292fb14dc28da788309ab60704f72cb6c878b30"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
