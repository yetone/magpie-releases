cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3710"
  sha256 arm:   "e7647f8591da766cc385fd9f44acc1d2139b510d438b4657de1420201c09e11d",
         intel: "fe2a6acccf3f0edb95e000b62c8543570a83d18ed546f1f9d7967a39f11b890d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
