cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4834"
  sha256 arm:   "ed5e2cd3dee89ad6d43f74778790b6c0d8dbba780eaff4aa7cd4edec1e3bb630",
         intel: "97f792d118e0345eb8bbec10d66d20969b05c8375101922573cd5950f1672e93"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
