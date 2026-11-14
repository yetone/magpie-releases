cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4101"
  sha256 arm:   "5bf26f625491ca96608385a3e002f1bb5cee07d6ab75ab5b0d918ff7cd0c3ba8",
         intel: "590e616d986c08e464808f9c957449445ff420919d7fba72492e4a61b2cf73e2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
