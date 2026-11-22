cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4679"
  sha256 arm:   "f7885d887a7f285110ad3728f058b7bea271b2c6c40f8da5c18ed7fa4b4b40e4",
         intel: "35efba873a81cdb143618cf6f63e79d5385b2c8cf1c5ce1daf949f97b521fe83"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
