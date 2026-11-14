cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4142"
  sha256 arm:   "29ef1092fb9edee5508aee4e0c72aac259f534cf534e62669efdbaca352fd8d0",
         intel: "9a2f98cad1d56a8c9b479008a122c1a8e2546e72b68a587aea9b061e7a97be7e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
