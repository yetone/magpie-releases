cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1930"
  sha256 arm:   "01bf8dcbb1fb3ce8d606504daa544924a5853a7f7fabb5188e36eb353905c71b",
         intel: "557365a38453d5c0adfe3aa0bde5c9daff17c5ff0f341207efd357e2a1f105e3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
