cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4327"
  sha256 arm:   "df489dd121ae65817313023ba4c0e5ba457f0d414c48f9b952c12b7ea4368aec",
         intel: "2beb53d7acfe02f92ee5886b7e1a60245e3a6804b21f8468e4e3c9198d4d0a47"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
