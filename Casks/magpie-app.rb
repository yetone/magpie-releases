cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.917"
  sha256 arm:   "2ae62b476a24b3961f9d94f291488ec46b5309926e885a09188d2f437fde4a16",
         intel: "fefe185f83e55323e69512e95e66c04156f0ed9ef5f295a6ed067eaf5b4d4c56"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
