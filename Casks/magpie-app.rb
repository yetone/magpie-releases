cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3341"
  sha256 arm:   "5f387a883717724f54950bcd2393c05c221188e0d4429e42ad0ad9796d3f1bca",
         intel: "76d69a0016b8962a7d20b419c020da6e067f5cd6a0f539feaed11ce23c3ca28c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
