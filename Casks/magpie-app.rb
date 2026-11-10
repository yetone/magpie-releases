cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3574"
  sha256 arm:   "71e46fede1f1f5bc6c3e1880f9dbd4fc04a4724efff91d8110c22bc6e218725a",
         intel: "8af61663926090da89bede9ce97d355156ba13fbe3b55e1a9b875ed8fe6321f2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
