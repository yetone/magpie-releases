cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3418"
  sha256 arm:   "82c947fa99f8bd6cd57b8aa4f63bddbd7786978f83f10f9c954b77e90a63ad93",
         intel: "27bfc12b44c0c27dd4ab7a38964b8749287b72468c0e93fa35f10b335a13e53c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
