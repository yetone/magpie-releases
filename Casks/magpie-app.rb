cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.86"
  sha256 arm:   "19ce759eb324ba5e536a3b3ccc1dfeb1c279b128aa35ebe5e84ff98cd1677159",
         intel: "9cd83afed0c4b1aeedf47db4a7eeb7b72686cae3bcbe39b85910d37774bbf093"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  depends_on :macos

  app "magpie.app"
end
