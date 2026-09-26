cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.139"
  sha256 arm:   "3094b8e343d4344e8fc140c1ae3cad994435b2cfe31d0501dcb874b9ad905419",
         intel: "51dcd76b68464251e65bf94eaf4c725dfebe04b3ceef02c573638e0d5f933a79"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
