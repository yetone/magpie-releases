cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3293"
  sha256 arm:   "79dfdb38c3eda038f2e4c34ed8a55733e6a56bfa87899118870703ed9c2a6b42",
         intel: "ca51730242d32396a32c27f4db3565f92c30d860038ee47c60cf6dac057aaaab"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
