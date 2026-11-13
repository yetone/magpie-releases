cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3968"
  sha256 arm:   "ddc54758cbf0435d7f8e78fc97bf6dfe95c70d2df0cbd7434b582adefe91d141",
         intel: "76a73894c5d4094cb93084535471c68a4cd7e9c43f3e763693206deef1685054"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
