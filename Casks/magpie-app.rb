cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3575"
  sha256 arm:   "0b22e1fb8d680aabae67c72541f1e4a91b4527ea536d0d72ffdfae9a13895249",
         intel: "073f9f3a505f67ec269ea196d289dc2075b19173f61cfda19dd11732607f7c35"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
