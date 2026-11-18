cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4441"
  sha256 arm:   "473b8dac6bef4b23b48b6660876822a8c7ff2b8957fd2538eceeb99a580a825c",
         intel: "d2adf42f18a7f39b7e329e51715fd812c4ec51dcf67ca2e105019e00ec17ca51"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
