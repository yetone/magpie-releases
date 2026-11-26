cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4909"
  sha256 arm:   "7966629f6648fe1dc1df2ade58d5f0b2b053caed669f4e73182953219e45d2ff",
         intel: "c9b9bfc6066a8ec16a7ba67f72322becdb2984da545c7ea3047b49f8c5c98e6e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
