cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2730"
  sha256 arm:   "45ad1603ced0a37fffb397f77c36e0e954741ba6ac051e9aae0e35ff5a12cf65",
         intel: "1516a3c9f41e87aea109c14eb394ea2b629426d08c02b9d9fe2cd423ccdda2bb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
