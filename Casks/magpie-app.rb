cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3223"
  sha256 arm:   "a0ac72af1a63399f5008dae0697c98b5fb69f36e484618def03e13fe5d9f5720",
         intel: "18aeec4ebc7cc7cfa38178ff88b325749034346ec75fbf8756809aaebe638def"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
