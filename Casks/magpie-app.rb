cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4188"
  sha256 arm:   "ec542aa0fb5cff54a3e7f4d3032f47f7e4656bb3239dc87ed11cb2b8ba294030",
         intel: "82d590a71eeb26314388828f3a46c248f77fd5ce2796df364ad66669100f604e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
