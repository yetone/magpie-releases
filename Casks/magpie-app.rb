cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3540"
  sha256 arm:   "741841488c721ce358aca46eefcd8d37d5658092ea70512575db7cd85410f36e",
         intel: "23db10ae1076a5350d4fe574f5c0fef90ced1753ad95bc34fc09dece81d12012"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
