cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3888"
  sha256 arm:   "b301d444b07649f7b7bca5c4243de22c29dc47c20b022fed2703c173f65dda2f",
         intel: "9e520f63c773f17d6e4d2bfa6302265c30153ef3268358e63cc4e107f6f21300"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
