cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2581"
  sha256 arm:   "c0409da67255a7a423106239438741c36cb2456c5a219c54222edbae4ac4a51e",
         intel: "0ea73552d4736965d294e78e2664befe99c76210ec907661ada9e33537293af9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
