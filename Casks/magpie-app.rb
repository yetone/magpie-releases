cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2032"
  sha256 arm:   "08886959ed48cc97f82b4fa8aed992b979c94201edf3864d32963b9a1cceee6e",
         intel: "4d78b60c7c4d0c0356c3e2f03b6bab00607edb319743f12b2017f3f6f61ebb93"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
