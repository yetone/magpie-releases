cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2323"
  sha256 arm:   "705cda7bf95f6884721f52e010ee496b6dcd2623056b5444b0e5287179a494e8",
         intel: "7cd64bfe8a0de3c4c35319d0ca381edc38a41d2e1b90be2bcdbfd0014b6f07c7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
