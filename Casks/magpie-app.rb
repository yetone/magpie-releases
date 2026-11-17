cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4367"
  sha256 arm:   "be0878fc390b7e6607db4eee51e03057e3dd649b64e92602d125162a1f6ca0fa",
         intel: "d5e954ef7dcca1a8f60c2770df79f065939c4722b90492548388185f3e998e64"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
