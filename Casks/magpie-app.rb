cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4297"
  sha256 arm:   "2c1383b2ada71a2257748a36ad6cb4d122eb15dad1d585c089939d3b1722318b",
         intel: "608101886b7e0547c4e7bad0114c69ba672a56245beb7c4a9f75a159502b5dfd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
