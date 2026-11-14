cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4203"
  sha256 arm:   "fe6d2fb516d896bf493dad797e843c723e122295c08f092a0bf438f1ed6891cd",
         intel: "42b6f5c3f2b527f6c33fbd4c60293fd1a0093dbc90a03cb86fc0169b5a6406e8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
